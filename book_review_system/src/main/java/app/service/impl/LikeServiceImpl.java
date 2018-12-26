package app.service.impl;

import app.model.Like;
import app.service.LikeService;

import java.io.Serializable;

public class LikeServiceImpl extends BaseServiceImpl implements LikeService {

    @Override
    public Like findById(Serializable key) {
        return null;
    }

    @Override
    public Like saveOrUpdate(Like entity) {
        return null;
    }

    @Override
    public boolean delete(Like entity) {
        return false;
    }
}
