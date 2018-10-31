package app.controller;

import java.security.Principal;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import app.dto.BookInfo;

@Controller
public class BooksController extends BaseController {
	private static final Logger logger = Logger.getLogger(BooksController.class);

	@RequestMapping("books/{id}")
	public ModelAndView bookDetail(@PathVariable String id, Principal principal) {
		logger.info("Book Detail");
		ModelAndView model = new ModelAndView("bookDetail");
		if (principal != null) {
			model.addObject("currentUser", currentUser());
		}
		BookInfo bookInfo = bookService.findBookById(Integer.parseInt(id));
		model.addObject("bookInfo", bookInfo);
		model.addObject("reviews", reviewService.loadReviewsForBook(Integer.parseInt(id)));
		return model;
	}

	@RequestMapping("addReview")
	public ModelAndView addReview() {
		logger.info("Add Review");
		ModelAndView model = new ModelAndView("addReview");
		return model;
	}
}
