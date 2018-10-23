package app.service.impl;

import app.dao.RoleDAO;
import app.dao.UserDAO;

public class BaseServiceImpl {
	protected RoleDAO roleDAO;
	protected UserDAO userDAO;
	
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
	
	
}
