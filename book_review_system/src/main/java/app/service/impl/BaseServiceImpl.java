package app.service.impl;

import app.dao.*;

public class BaseServiceImpl {

	protected RoleDAO roleDAO;
	protected LikeDAO likeDAO;
	protected ReviewDAO reviewDAO;
	protected RequestDAO requestDAO;
	protected FollowDAO followDAO;
	protected MarkDAO markDAO;
	protected CommentDAO commentDAO;
	protected CategoryDAO categoryDAO;
	protected BookDAO bookDAO;
	protected UserDAO userDAO;
	protected ActivityDAO activityDAO;

	public void setActivityDAO(ActivityDAO activityDAO) {
		this.activityDAO = activityDAO;
	}

	public void setLikeDAO(LikeDAO likeDAO) {
		this.likeDAO = likeDAO;
	}

	public void setReviewDAO(ReviewDAO reviewDAO) {
		this.reviewDAO = reviewDAO;
	}

	public void setRequestDAO(RequestDAO requestDAO) {
		this.requestDAO = requestDAO;
	}

	public void setFollowDAO(FollowDAO followDAO) {
		this.followDAO = followDAO;
	}

	public void setMarkDAO(MarkDAO markDAO) {
		this.markDAO = markDAO;
	}

	public void setCommentDAO(CommentDAO commentDAO) {
		this.commentDAO = commentDAO;
	}

	public void setCategoryDAO(CategoryDAO categoryDAO) {
		this.categoryDAO = categoryDAO;
	}

	public void setBookDAO(BookDAO bookDAO) {
		this.bookDAO = bookDAO;
	}

	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}

	public void setRoleDAO(RoleDAO roleDAO) {
		this.roleDAO = roleDAO;
	}

}
