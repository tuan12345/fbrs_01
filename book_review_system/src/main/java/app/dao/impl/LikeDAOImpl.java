package app.dao.impl;

import app.dao.GenericDAO;
import app.dao.LikeDAO;
import app.model.Like;

import java.io.Serializable;

public class LikeDAOImpl extends GenericDAO<Integer, Like> implements LikeDAO {

    @Override
    public void delete(Like entity) {

    }

    @Override
    public Like saveOrUpdate(Like entity) {
        return null;
    }

    @Override
    public Like findById(Serializable key) {
        return null;
    }

}
