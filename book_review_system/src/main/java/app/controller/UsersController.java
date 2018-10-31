package app.controller;

import java.security.Principal;
import java.util.Locale;

import org.apache.log4j.Logger;
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

@Controller
public class UsersController extends BaseController {
	private static final Logger logger = Logger.getLogger(UsersController.class);

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
		model.addObject("roles", roleService.loadRoles());
		return model;
	}

	@RequestMapping("users/{id}")
	public @ResponseBody UserInfo getUser(@PathVariable String id) {
		UserInfo userInfo = userService.findUserInfoById(Integer.parseInt(id));
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
		userService.updateUser(userInfo);
		return messageSource.getMessage("users.updated", null, locale);
	}

	@RequestMapping("/profile")
	public ModelAndView showMyProfile() {
		ModelAndView model = new ModelAndView("profile");
		model.addObject("userProfile", userService.findUserInfoById(currentUser().getId()));
		model.addObject("showFollow", false);
		return model;
	}

	@RequestMapping("/profile/{id}")
	public ModelAndView showProfile(@PathVariable String id, Locale locale, Principal principal) {
		if (principal == null) {
			return new ModelAndView("redirect:/login");
		}
		ModelAndView model = new ModelAndView("profile");
		UserInfo currentUser = userService.findUserInfoById(currentUser().getId());
		if (currentUser.getId() == Integer.parseInt(id)) {
			return new ModelAndView("redirect:/profile");
		}
		UserInfo user = userService.findUserInfoById(Integer.parseInt(id));
		if (user == null) {
			model.addObject("notFoundUser", messageSource.getMessage("users.notfound", null, locale));
			model.addObject("showFollow", false);
		} else {
			model.addObject("userProfile", user);
			model.addObject("currentUser", currentUser);
			model.addObject("showFollow", true);
			model.addObject("follow", followService.getFollow(currentUser.getId(), user.getId()));
		}

		return model;
	}

	private int pages() {
		return (int) (Math.round(userService.loadRowCount() / 5 + 0.5));
	}
}
