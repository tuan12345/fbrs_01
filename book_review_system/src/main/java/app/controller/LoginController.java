package app.controller;

import java.util.Locale;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {
	private static final Logger logger = Logger.getLogger(UsersController.class);

	@Autowired
	private ReloadableResourceBundleMessageSource messageSource;

	@RequestMapping("/login")
	public ModelAndView login(@RequestParam(value = "error", required = false) String error, Locale locale) {
		ModelAndView model = new ModelAndView("login");
		if (error != null) {
			logger.info("Login Fail!");
			model.addObject("msg", messageSource.getMessage("login.fail", null, locale));
		}
		return model;
	}

	@RequestMapping("/logout")
	public ModelAndView logout(Locale locale) {
		ModelAndView model = new ModelAndView("login");
		model.addObject("msg", messageSource.getMessage("logout", null, locale));
		return model;
	}

}
