package app.controller;

import java.io.File;
import java.io.IOException;
import java.security.Principal;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.apache.log4j.Logger;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import app.dto.BookInfo;
import app.util.DateUtil;

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

	@RequestMapping("adminBook")
	public ModelAndView adminBook(@RequestParam(value = "success", required = false) String addSuccess, Locale locale) {
		ModelAndView model = new ModelAndView("adminBook");
		model.addObject("categories", categoryService.loadCategories());
		if(addSuccess != null){
			model.addObject("addSuccessMsg", messageSource.getMessage("book.addSuccess", null, locale));
		}
		return model;
	}

	@RequestMapping(value = "books", method = RequestMethod.POST, consumes = { MediaType.MULTIPART_FORM_DATA_VALUE })
	public ModelAndView addBook(@ModelAttribute("BookInfo") BookInfo bookInfo, HttpServletRequest request,
			@RequestParam("publishDate1") String date,
			@RequestParam(value = "image1", required = false) MultipartFile fileUpload) {
		String path = request.getSession().getServletContext().getRealPath("/") + "assets/img/book/";
		bookInfo.setPublishDate(DateUtil.parseDate(date));
		if(bookService.saveBook(bookInfo, fileUpload, path)){
			return new ModelAndView("redirect:/adminBook?success");
		} 
		return new ModelAndView("redirect:/adminBook");
	}

	@RequestMapping("addReview")
	public ModelAndView addReview() {
		logger.info("Add Review");
		ModelAndView model = new ModelAndView("addReview");
		return model;
	}
}
