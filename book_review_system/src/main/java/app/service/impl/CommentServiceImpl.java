package app.service.impl;

import app.model.Comment;
import app.service.CommentService;

import java.io.Serializable;

public class CommentServiceImpl  extends BaseServiceImpl implements CommentService {
    @Override
    public Comment findById(Serializable key) {
        return null;
    }

    @Override
    public Comment saveOrUpdate(Comment entity) {
        return null;
    }

    @Override
    public boolean delete(Comment entity) {
        return false;
    }
}
