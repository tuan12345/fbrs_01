package app.service.impl;

import java.io.Serializable;

import org.apache.log4j.Logger;

import app.dto.CommentInfo;
import app.model.Comment;
import app.model.Review;
import app.model.User;
import app.service.CommentService;

public class CommentServiceImpl extends BaseServiceImpl implements CommentService{
	private Logger logger = Logger.getLogger(CommentServiceImpl.class);
	
	@Override
	public CommentInfo findById(Serializable key, boolean lock) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public CommentInfo saveOrUpdate(CommentInfo entity) {
		try {
			User user = userDAO.findById(entity.getUser().getId());
			Review review = reviewDAO.findById(entity.getReview().getId());
			Comment comment = new Comment();
			comment.setContent(entity.getContent());
			comment.setReview(review);
			comment.setPrarentId(1);
			comment.setUser(user);
			commentDAO.saveOrUpdate(comment);
			return entity;
		} catch (Exception e) {
			logger.error(e);
			throw e;
		}
	}

	@Override
	public boolean delete(CommentInfo entity) {
		// TODO Auto-generated method stub
		return false;
	}
	
}
