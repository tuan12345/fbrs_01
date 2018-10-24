package app.service;

import java.util.List;

import app.dto.ReviewInfo;
import app.model.Review;

public interface ReviewService extends BaseService<Integer, Review>{
	List<Review> loadReviews();
	// load reviews of  this book
	List<ReviewInfo> loadReviewsForBook(int book_id);
}
