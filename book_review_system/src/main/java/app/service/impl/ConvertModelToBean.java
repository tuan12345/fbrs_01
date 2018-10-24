package app.service.impl;

import java.util.List;
import java.util.function.Function;
import java.util.stream.Collectors;

import app.dto.BookInfo;
import app.dto.CategoryInfo;
import app.dto.ReviewInfo;
import app.dto.RoleInfo;
import app.dto.UserInfo;
import app.model.Book;
import app.model.Category;
import app.model.Review;
import app.model.Role;
import app.model.User;

public class ConvertModelToBean {
	public static List<BookInfo> mapBooksToBooksInf(List<Book> books) {
		Function<Book, BookInfo> mapBookToBookInfo = b -> new BookInfo(b.getId(), b.getTittle(), b.getPublishDate(),
				b.getAuthorName(), b.getNumberOfPage(), b.getImage(), b.getCategory());
		List<BookInfo> listBooksInfo = books.stream().map(mapBookToBookInfo).collect(Collectors.toList());
		return listBooksInfo;
	}

	public static CategoryInfo mapCategoryToCategoryInfo(Category category) {
		Function<Category, CategoryInfo> map = c -> new CategoryInfo(c.getId(), c.getName());
		return map.apply(category);
	}

	public static RoleInfo mapRoleToRoleInfo(Role role) {
		Function<Role, RoleInfo> map = r -> new RoleInfo(r.getId(), r.getName());
		return map.apply(role);
	}

	public static UserInfo mapUserToUserInfo(User user) {
		Function<User, UserInfo> map = u -> new UserInfo(u.getId(), u.getFullName(), u.getUserName(), u.getEmail(),
				mapRoleToRoleInfo(u.getRole()));
		return map.apply(user);
	}

	public static List<ReviewInfo> mapReviewToReviewsInf(List<Review> reviews) {
		Function<Review, ReviewInfo> mapBookToBookInfo = r -> new ReviewInfo(r.getId(), r.getNumberOfStar(),
				r.getContent(), r.getCreatedAt(), mapUserToUserInfo(r.getUser()));
		List<ReviewInfo> listReviewsInfo = reviews.stream().map(mapBookToBookInfo).collect(Collectors.toList());
		return listReviewsInfo;
	}

}
