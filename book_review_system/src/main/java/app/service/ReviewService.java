package app.service;

import java.util.List;

import app.model.Review;

public interface ReviewService extends BaseService<Integer, Review>{
	List<Review> loadReviews();
	// load reviews of  this book
	List<Review> loadReviewsForBook(int book_id);
}
