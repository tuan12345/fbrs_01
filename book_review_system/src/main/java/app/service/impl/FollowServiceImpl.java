package app.service.impl;

import app.model.Follow;
import app.service.FollowService;

import java.io.Serializable;

public class FollowServiceImpl extends BaseServiceImpl implements FollowService {
    @Override
    public Follow findById(Serializable key) {
        return null;
    }

    @Override
    public Follow saveOrUpdate(Follow entity) {
        return null;
    }

    @Override
    public boolean delete(Follow entity) {
        return false;
    }
}
