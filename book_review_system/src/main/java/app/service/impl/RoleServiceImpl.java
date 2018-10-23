package app.service.impl;

import java.io.Serializable;
import java.util.List;

import org.apache.log4j.Logger;

import app.model.Role;
import app.service.RoleService;

public class RoleServiceImpl extends BaseServiceImpl implements RoleService {

	private static final Logger logger = Logger.getLogger(RoleServiceImpl.class);

	@Override
	public Role findById(Serializable key, boolean lock) {
		try {
			return roleDAO.findById(key);
		} catch (Exception e) {
			return null;
		}
	}

	@Override
	public Role saveOrUpdate(Role entity) {
		try {
			return roleDAO.saveOrUpdate(entity);
		} catch (Exception e) {
			logger.error(e);
			throw e;
		}
	}

	@Override
	public boolean delete(Role entity) {
		try {
			delete(entity);
			return true;
		} catch (Exception e) {
			logger.error(e);
			throw e;
		}
	}

	@Override
	public List<Role> loadRoles() {
		try {
			return roleDAO.loadRoles();
		} catch (Exception e) {
			return null;
		}
	}

}
