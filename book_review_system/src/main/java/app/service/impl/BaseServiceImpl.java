package app.service.impl;

import app.dao.BookDAO;
import app.dao.RoleDAO;
import app.dao.UserDAO;

public class BaseServiceImpl {
	protected RoleDAO roleDAO;
	protected UserDAO userDAO;
	protected BookDAO bookDAO;

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

}
