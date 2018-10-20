package app.service.impl;

import app.dao.RoleDAO;

public class BaseServiceImpl {
	protected RoleDAO roleDAO;

	public RoleDAO getRoleDAO() {
		return roleDAO;
	}

	public void setRoleDAO(RoleDAO roleDAO) {
		this.roleDAO = roleDAO;
	}

}
