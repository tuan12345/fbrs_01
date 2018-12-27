package app.service.impl;

import app.model.Book;
import app.service.BookService;

import java.io.Serializable;

public class BookServiceImpl extends BaseServiceImpl implements BookService {
    @Override
    public Book findById(Serializable key) {
        return null;
    }

    @Override
    public Book saveOrUpdate(Book entity) {
        return null;
    }

    @Override
    public boolean delete(Book entity) {
        return false;
    }
}
