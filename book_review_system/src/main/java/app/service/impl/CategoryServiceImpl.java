package app.service.impl;

import java.io.Serializable;
import java.util.List;
import app.dto.CategoryInfo;
import app.model.Category;
import app.service.CategoryService;

public class CategoryServiceImpl extends BaseServiceImpl implements CategoryService {

	@Override
	public Category findById(Serializable key, boolean lock) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Category saveOrUpdate(Category entity) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean delete(Category entity) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<String> categoryName() {
		try {
			return categoryDAO.nameCategory();
		} catch (Exception e) {
			return null;
		}

	}

	@Override
	public CategoryInfo findCategoryByName(String name) {
		try {
			return ConvertModelToBean.mapCategoryToCategoryInfo(categoryDAO.findCategoryByName(name));
		} catch (Exception e) {
			return null;
		}

	}

}
