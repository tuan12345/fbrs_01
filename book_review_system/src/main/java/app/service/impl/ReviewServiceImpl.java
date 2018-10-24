package app.service.impl;

import java.io.Serializable;
import java.util.List;

import org.apache.log4j.Logger;

import app.dto.ReviewInfo;
import app.model.Review;
import app.service.ReviewService;

public class ReviewServiceImpl extends BaseServiceImpl implements ReviewService {
	private static final Logger logger = Logger.getLogger(ReviewServiceImpl.class);

	@Override
	public Review findById(Serializable key, boolean lock) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Review saveOrUpdate(Review entity) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean delete(Review entity) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Review> loadReviews() {
		try {
			return reviewDAO.loadReivews();
		} catch (Exception e) {
			logger.error(e);
			return null;
		}
	}

	@Override
	public List<ReviewInfo> loadReviewsForBook(int book_id) {
		try {
			return ConvertModelToBean.mapReviewToReviewsInf(reviewDAO.loadReviewsForBook(book_id));
		} catch (Exception e) {
			logger.error(e);
			return null;
		}
	}

}
