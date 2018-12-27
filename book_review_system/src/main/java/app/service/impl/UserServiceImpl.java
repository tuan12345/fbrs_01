package app.service.impl;

import app.model.User;
import app.service.UserService;

import java.io.Serializable;

public class UserServiceImpl extends BaseServiceImpl implements UserService {
    @Override
    public User findById(Serializable key) {
        return null;
    }

    @Override
    public User saveOrUpdate(User entity) {
        return null;
    }

    @Override
    public boolean delete(User entity) {
        return false;
    }
}
