package app.service.impl;

import java.util.List;
import java.util.function.Function;
import java.util.stream.Collectors;

import app.dto.BookInfo;
import app.dto.CategoryInfo;
import app.model.Book;
import app.model.Category;

public class ConvertModelToBean {
	public static List<BookInfo> mapBookToBookInf(List<Book> books){
		Function<Book, BookInfo> mapBookToBookInfo = b -> new BookInfo(b.getId(), b.getTittle(), b.getPublishDate(),
				b.getAuthorName(), b.getNumberOfPage(), b.getImage(), b.getCategory());
		List<BookInfo> listBookInfo = books.stream().map(mapBookToBookInfo).collect(Collectors.toList());
		return listBookInfo;
	}
	public static CategoryInfo mapCategoryToCategoryInfo(Category category) {
		Function<Category, CategoryInfo> map=c->new CategoryInfo(c.getId(),c.getName());
		return map.apply(category);
	}

}
