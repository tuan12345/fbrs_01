package app.service.impl;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import app.dto.ReviewInfo;
import app.model.Review;
import app.service.ReviewService;

public class ReviewServiceImpl extends BaseServiceImpl implements ReviewService {
	private static final Logger logger = Logger.getLogger(ReviewServiceImpl.class);

	@Override
	public ReviewInfo createReview(ReviewInfo entity, int bookId, int userId) {
		try {
			Review review = new Review();
			review.setNumberOfStar(entity.getNumberOfStar());
			review.setContent(entity.getContent());
			review.setCreatedAt(new Date()); 
			review.setBook(getBookDAO().findByIdLock(bookId, false));
			review.setUser(getUserDAO().findByIdLock(userId, false));
			return ConvertModelToBean.mapReviewToReviewInfo(getReviewDAO().saveOrUpdate(review));
		} catch (Exception e) {
			logger.error(e);
			return null;
		}

	}

	@Override
	public ReviewInfo updateReview(ReviewInfo entity) {
		try {
			Review review = getReviewDAO().findById(entity.getId());
			review.setNumberOfStar(entity.getNumberOfStar());
			review.setContent(entity.getContent());
			review.setCreatedAt(entity.getCreatedAt());
			return ConvertModelToBean.mapReviewToReviewInfo(getReviewDAO().saveOrUpdate(review));

		} catch (Exception e) {
			logger.error(e);
			throw e;
		}

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

	@Override
	public ReviewInfo findById(Serializable key, boolean lock) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean delete(ReviewInfo entity) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public ReviewInfo findUserRivew(Integer userId, Integer bookId) {
		try {
			List<Review> reviews = reviewDAO.loadReviewsForBook(bookId);
			for (Review review : reviews) {
				if (review.getUser().getId() == userId) {
					return ConvertModelToBean.mapReviewToReviewInfo(review);
				}
			}
			ReviewInfo reviewF = new ReviewInfo();
			return reviewF;
		} catch (Exception e) {
			logger.error(e);
			return null;
		}

	}

	@Override
	public ReviewInfo saveOrUpdate(ReviewInfo entity) {
		// TODO Auto-generated method stub
		return null;
	}

}
