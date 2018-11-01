package app.service.impl;

import java.io.File;
import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.apache.log4j.Logger;
import org.springframework.web.multipart.MultipartFile;

import app.dto.BookInfo;
import app.model.Book;
import app.model.Category;
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
			return ConvertModelToBean.mapBooksToBooksInf(bookDAO.findAll(page));
		} catch (Exception e) {
			return null;
		}

	}

	@Override
	public List<BookInfo> findBookByTitle(String title) {
		try {
			return ConvertModelToBean.mapBooksToBooksInf(bookDAO.findBooksByTitle(title));
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

	@Override
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

	@Override
	public List<BookInfo> listBooksByCategoryId(Integer Category_id) {
		try {
			List<Book> books = bookDAO.loadBooks();
			List<Book> booksTemp = new ArrayList<>();
			for (Book book : books) {
				if (book.getCategory().getId().equals(Category_id)) {
					booksTemp.add(book);
				}
			}
			return ConvertModelToBean.mapBooksToBooksInf(booksTemp);
		} catch (Exception e) {
			return Collections.emptyList();
		}

	}

	@Override
	public boolean saveBook(BookInfo bookInfo, MultipartFile image, String path) {
		try {
			if(image != null){
				try {
					FileUtils.forceMkdir(new File(path));
					File upload = new File(path + image.getOriginalFilename());
					image.transferTo(upload);
					bookInfo.setImage(image.getOriginalFilename());
				} catch (IOException ex) {
					logger.error(ex);
					return false;
				}
			}
			Category category = categoryDAO.findById(bookInfo.getCategory().getId());
			Book book = new Book(bookInfo.getTittle(), bookInfo.getPublishDate(), bookInfo.getAuthorName(),
					bookInfo.getNumberOfPage(), bookInfo.getImage(), category);
			saveOrUpdate(book);
			return true;
		} catch (Exception e) {
			logger.error(e);
			throw e;
		}
	}

}
