package app.service.impl;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import org.apache.log4j.Logger;

import app.dto.RoleInfo;
import app.dto.UserInfo;
import app.model.Role;
import app.model.User;
import app.service.UserService;

public class UserServiceImpl extends BaseServiceImpl implements UserService {
	private static final Logger logger = Logger.getLogger(UserServiceImpl.class);

	@Override
	public User findById(Serializable key, boolean lock) {
		try {
			return userDAO.findById(key);
		} catch (Exception e) {
			return null;
		}
	}

	@Override
	public User saveOrUpdate(User entity) {
		try {
			return userDAO.saveOrUpdate(entity);
		} catch (Exception e) {
			logger.error(e);
			throw e;
		}
	}

	@Override
	public boolean delete(User entity) {
		try {
			userDAO.delete(entity);
			return true;
		} catch (Exception e) {
			logger.error(e);
			throw e;
		}
	}

	@Override
	public List<UserInfo> loadUsers(int page) {
		try {
			List<UserInfo> userInfos = new ArrayList<>();
			if (page == 1) {
				page = page - 1;
			} else {
				page = (page * 5) - 5;
			}

			List<User> users = userDAO.loadUsers(page);

			for (User user : users) {
				RoleInfo roleInfo = new RoleInfo(user.getRole().getId(), user.getRole().getName());
				userInfos.add(
						new UserInfo(user.getId(), user.getFullName(), user.getUserName(), user.getEmail(), roleInfo));
			}
			return userInfos;
		} catch (Exception e) {
			return Collections.emptyList();
		}

	}

	@Override
	public boolean deleteUser(int id) {
		try {
			User user = userDAO.findById(id);
			return delete(user);
		} catch (Exception e) {
			logger.error(e);
			throw e;
		}
	}

	@Override
	public int loadRowCount() {
		try {
			return userDAO.loadRowsCount();
		} catch (Exception e) {
			return 0;
		}
	}

	@Override
	public User updateUser(int id, String name, String email, int roleID) {
		try {
			Role role = roleDAO.findById(roleID);
			User user = userDAO.findByIdLock(id, true);
			user.setFullName(name);
			user.setEmail(email);
			user.setRole(role);
			return saveOrUpdate(user);
		} catch (Exception e) {
			logger.error(e);
			throw e;
		}
	}

	@Override
	public UserInfo findUserInfoById(int id) {
		try {
			User user = findById(id, false);
			RoleInfo roleInfo = new RoleInfo(user.getRole().getId(), user.getRole().getName());
			UserInfo userInfo = new UserInfo(user.getId(), user.getFullName(), user.getUserName(), user.getPassword(), roleInfo);
			return userInfo;
		} catch (Exception e) {
			return null;
		}
	}

}
