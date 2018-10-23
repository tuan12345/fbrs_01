package app.service.impl;

import java.io.Serializable;
import java.util.List;

import org.apache.log4j.Logger;

import app.dto.BookInfo;
import app.model.Book;
import app.model.Review;
import app.service.BookService;

public class BookServiceImpl extends BaseServiceImpl implements BookService {
	private static final Logger logger = Logger.getLogger(BookServiceImpl.class);

	@Override
	public Book saveOrUpdate(Book entity) {
		try {
			return bookDAO.saveOrUpdate(entity);
		} catch (Exception e) {
			logger.error(e);
			throw e;
		}

	}

	@Override
	public boolean delete(Book entity) {
		try {
			delete(entity);
			return true;
		} catch (Exception e) {
			logger.error(e);
			throw e;
		}

	}

	@Override
	public Long count() {
		try {
			return bookDAO.count();
		} catch (Exception e) {
			return null;
		}
	}

	@Override
	public Integer page(Long count, int maxResult) {
		try {
			return (int) ((count < maxResult) ? 1
					: ((count % maxResult == 0) ? (count / maxResult) : (count / maxResult + 1)));
		} catch (Exception e) {
			return null;
		}

	}

	@Override
	public Book findById(Serializable key, boolean lock) {
		try {
			return bookDAO.findById(key);
		} catch (Exception e) {
			return null;
		}
	}

	@Override
	public List<BookInfo> listBookByPage(Integer page) {
		try {
			return ConvertModelToBean.mapBookToBookInf(bookDAO.findAll(page));
		} catch (Exception e) {
			return null;
		}

	}

	@Override
	public List<BookInfo> findBookByTitle(String title) {
		try {
			return ConvertModelToBean.mapBookToBookInf(bookDAO.findBookByTitle(title));
		} catch (Exception e) {
			return null;
		}
		
	}

	@Override
	public List<String> getListTitle() {
		try {
			return bookDAO.findAllBookTitle();
		} catch (Exception e) {
			return null;
		}
		
	}

	public BookInfo findBookById(int id) {
		try {
			Book book = bookDAO.findById(id);
			List<Review> reviews = reviewDAO.loadReviewsForBook(id);
			BookInfo bookInfo = new BookInfo(book.getId(), book.getTittle(), book.getPublishDate(),
					book.getAuthorName(), book.getNumberOfPage(), book.getImage(), book.getCategory());
			bookInfo.setAvgStar(reviews);
			bookInfo.setQuantityVote(reviews);
			bookInfo.setReviews(reviews);
			return bookInfo;
		} catch (Exception e) {
			logger.error(e);
			return null;
		}
		
	}

}
