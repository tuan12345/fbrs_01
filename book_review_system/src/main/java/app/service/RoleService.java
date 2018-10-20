package app.service;

import java.util.List;

import app.model.Role;

public interface RoleService extends BaseService<Integer, Role>{
	List<Role> loadRoles();
}
