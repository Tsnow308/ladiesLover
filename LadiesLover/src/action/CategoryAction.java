package action;

import com.opensymphony.xwork2.ActionSupport;

import model.Category;
import service.CategoryService;

public class CategoryAction extends ActionSupport {
	private CategoryService categoryService;

	public CategoryService getCategoryService() {
		return categoryService;
	}

	public void setCategoryService(CategoryService categoryService) {
		this.categoryService = categoryService;
	}
}
