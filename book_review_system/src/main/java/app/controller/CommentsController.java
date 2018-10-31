package app.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import app.dto.CommentInfo;

@Controller
public class CommentsController extends BaseController{
	private static final Logger logger = Logger.getLogger(CommentsController.class);
	
	@RequestMapping(value = "/comments", method = RequestMethod.POST)
	public ModelAndView addComment(@ModelAttribute("CommentInfo") CommentInfo commentInfo){
		logger.info("Content comment: " + commentInfo.getContent());
		logger.info("User ID: " + commentInfo.getUser().getId());
		logger.info("Review ID: " + commentInfo.getReview().getId());
		commentService.saveOrUpdate(commentInfo);
		return new ModelAndView("redirect:/books/" + commentInfo.getReview().getBookInfo().getId());
	}
	
}
