package app.service;

import java.util.List;

import app.model.Category;

public interface CategorySerivce extends BaseService<Integer, Category>{
	List<Category> loadCategories();
}
