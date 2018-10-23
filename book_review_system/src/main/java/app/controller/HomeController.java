package app.controller;

import org.apache.log4j.Logger;
import org.apache.tiles.autotag.core.runtime.annotation.Parameter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import app.service.BookService;

@Controller
public class HomeController {

	private static final Logger logger = Logger.getLogger(HomeController.class);

	@Autowired
	private BookService bookService;

	@RequestMapping(value = "/")
	public ModelAndView index() {
		logger.info("home page");
		ModelAndView model = new ModelAndView("home");
		return model;
	}

	@RequestMapping(value = "/books", method = RequestMethod.GET)
	public ModelAndView loadbooks(@RequestParam(value = "page", required = false) Integer page) {
		logger.info("book page");
		ModelAndView model = new ModelAndView("books");
		int curentPage = 1;
		if (page != null)
			curentPage = page;
		model.addObject("curentPage", curentPage);
		model.addObject("titles", bookService.getListTitle());
		model.addObject("page", bookService.page(bookService.count(), 4));
		model.addObject("books", bookService.listBookByPage(page));
		return model;
	}

	@RequestMapping(value = "/Search", method = RequestMethod.GET)
	public ModelAndView searchByTitle(@RequestParam("search") String title) {
		logger.info("search book page");
		ModelAndView model = new ModelAndView("bookSearch");
		model.addObject("title", title);
		model.addObject("books", bookService.findBookByTitle(title.trim()));
		model.addObject("titles", bookService.getListTitle());
		return model;
	}
}
