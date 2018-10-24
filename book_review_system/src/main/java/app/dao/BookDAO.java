package app.dao;

import java.util.List;
import app.model.Book;

public interface BookDAO extends BaseDAO<Integer, Book> {

	List<Book> findAll(Integer page);

	Long count();

	Book findByIdLock(int id, boolean lock);
	
	List<Book>findBookByTitle(String title);
	
	List<String> findAllBookTitle();

}
