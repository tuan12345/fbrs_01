package app.controller;

import java.util.Locale;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import app.dto.UserInfo;
import app.service.UserService;

@Controller
public class UsersController {
	private static final Logger logger = Logger.getLogger(UsersController.class);

	@Autowired
	private UserService userService;

	@Autowired
	private ReloadableResourceBundleMessageSource messageSource;

	@RequestMapping("/users")
	public ModelAndView users(@RequestParam(value = "page", required = false) String page, Locale locale) {
		logger.info("load Users");
		ModelAndView model = new ModelAndView("users");
		model.addObject("pages", pages());
		if (page == null) {
			model.addObject("users", userService.loadUsers(1));
			model.addObject("currenPage", 1);
			model.addObject("pages", pages());
		} else {
			int p = Integer.parseInt(page);
			model.addObject("users", userService.loadUsers(p));
			model.addObject("currenPage", p);
			model.addObject("pages", pages());
		}
		if (userService.loadRowCount() == 0) {
			model.addObject("message", messageSource.getMessage("users.notfound", null, locale));
		}
		return model;
	}

	@RequestMapping("users/{id}")
	public @ResponseBody UserInfo getUser(@PathVariable String id){
		logger.info("get User id:" + id);
		UserInfo userInfo = userService.findUserInfoById(Integer.parseInt(id));
		logger.info("name of person get user: " + userInfo.getName());
		return userInfo;
	}
	
	@RequestMapping(value = "users/{id}", method = RequestMethod.DELETE)
	public @ResponseBody String deleteUser(@PathVariable String id, Locale locale) {
		logger.info("delete User id:" + id);
		if (userService.findById(Integer.parseInt(id), false) == null) {
			return messageSource.getMessage("users.notfound", null, locale);
		}
		userService.deleteUser(Integer.parseInt(id));
		return messageSource.getMessage("users.deleted", null, locale);
	}

	@RequestMapping(value = "/users", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public @ResponseBody String updateUser(@RequestBody UserInfo userInfo, Locale locale) {
		if (userService.findById(userInfo.getId(), false) == null) {
			return messageSource.getMessage("users.notfound", null, locale);
		}
		userService.updateUser(userInfo.getId(), userInfo.getName(), userInfo.getEmail(), userInfo.getRole().getId());
		return messageSource.getMessage("users.updated", null, locale);
	}

	private int pages() {
		return (int) (Math.round(userService.loadRowCount() / 5 + 0.5));
	}
}
