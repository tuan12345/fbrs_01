package app.service.impl;

import app.model.Review;
import app.service.ReviewService;

import java.io.Serializable;

public class ReviewServiceImpl extends BaseServiceImpl implements ReviewService {
    @Override
    public Review findById(Serializable key) {
        return null;
    }

    @Override
    public Review saveOrUpdate(Review entity) {
        return null;
    }

    @Override
    public boolean delete(Review entity) {
        return false;
    }
}
