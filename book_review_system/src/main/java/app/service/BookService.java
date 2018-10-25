package app.service;

import java.util.List;

import app.dto.BookInfo;
import app.model.Book;

public interface BookService extends BaseService<Integer, Book> {	
	
	List<BookInfo> listBookByPage(Integer page);
	Long count();
	Integer page(Long count ,int maxResult);
	List<BookInfo> findBookByTitle(String title);
	List<String> getListTitle();
	BookInfo findBookById(int id);
}
