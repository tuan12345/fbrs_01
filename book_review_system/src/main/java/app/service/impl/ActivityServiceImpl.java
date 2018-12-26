package app.service.impl;

import app.model.Activity;
import app.service.ActivityService;

import java.io.Serializable;

public class ActivityServiceImpl extends BaseServiceImpl implements ActivityService {
    @Override
    public Activity findById(Serializable key) {
        return null;
    }

    @Override
    public Activity saveOrUpdate(Activity entity) {
        return null;
    }

    @Override
    public boolean delete(Activity entity) {
        return false;
    }
}
