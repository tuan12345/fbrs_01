package app.dto;

import java.util.Date;

import app.model.Category;

public class BookInfo {
	private Integer id;
	private String tittle;
	private Date publishDate;
	private String authorName;
	private int numberOfPage;
	private String image;
	private Category category;

	public BookInfo(Integer id, String tittle, Date publishDate, String authorName, int numberOfPage, String image,
			Category category) {
		super();
		this.id = id;
		this.tittle = tittle;
		this.publishDate = publishDate;
		this.authorName = authorName;
		this.numberOfPage = numberOfPage;
		this.image = image;
		this.category = category;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTittle() {
		return tittle;
	}

	public void setTittle(String tittle) {
		this.tittle = tittle;
	}

	public Date getPublishDate() {
		return publishDate;
	}

	public void setPublishDate(Date publishDate) {
		this.publishDate = publishDate;
	}

	public String getAuthorName() {
		return authorName;
	}

	public void setAuthorName(String authorName) {
		this.authorName = authorName;
	}

	public int getNumberOfPage() {
		return numberOfPage;
	}

	public void setNumberOfPage(int numberOfPage) {
		this.numberOfPage = numberOfPage;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

}
