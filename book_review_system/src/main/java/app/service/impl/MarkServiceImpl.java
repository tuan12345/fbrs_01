package app.service.impl;

import app.model.Mark;
import app.service.MarkService;

import java.io.Serializable;

public class MarkServiceImpl extends BaseServiceImpl implements MarkService {
    @Override
    public Mark findById(Serializable key) {
        return null;
    }

    @Override
    public Mark saveOrUpdate(Mark entity) {
        return null;
    }

    @Override
    public boolean delete(Mark entity) {
        return false;
    }
}
