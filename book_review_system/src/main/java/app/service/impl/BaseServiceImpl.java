package app.service.impl;

import app.dao.ActivityDAO;
import app.dao.BookDAO;
import app.dao.ReviewDAO;
import app.dao.RoleDAO;
import app.dao.UserDAO;

public class BaseServiceImpl {
	protected RoleDAO roleDAO;
	protected UserDAO userDAO;
	protected BookDAO bookDAO;
	protected ReviewDAO reviewDAO;
	protected ActivityDAO activityDAO;

	public RoleDAO getRoleDAO() {
		return roleDAO;
	}

	public void setRoleDAO(RoleDAO roleDAO) {
		this.roleDAO = roleDAO;
	}

	public UserDAO getUserDAO() {
		return userDAO;
	}

	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}

	public BookDAO getBookDAO() {
		return bookDAO;
	}

	public void setBookDAO(BookDAO bookDAO) {
		this.bookDAO = bookDAO;
	}

	public ReviewDAO getReviewDAO() {
		return reviewDAO;
	}

	public void setReviewDAO(ReviewDAO reviewDAO) {
		this.reviewDAO = reviewDAO;
	}

	public ActivityDAO getActivityDAO() {
		return activityDAO;
	}

	public void setActivityDAO(ActivityDAO activityDAO) {
		this.activityDAO = activityDAO;
	}
}
