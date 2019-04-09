package Beans;

public class BookBean {
	
	private int isbn;
	private String book_name;
	private String authour_name;
	private String category;
	private int price;
	private int quantity;
	private int borrowed;
	
	public int getIsbn() {
		return isbn;
	}
	public void setIsbn(int isbn) {
		this.isbn = isbn;
	}
	public String getBook_name() {
		return book_name;
	}
	public void setBook_name(String book_name) {
		this.book_name = book_name;
	}
	public String getAuthour_name() {
		return authour_name;
	}
	public void setAuthour_name(String authour_name) {
		this.authour_name = authour_name;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getBorrowed() {
		return borrowed;
	}
	public void setBorrowed(int borrowed) {
		this.borrowed = borrowed;
	}

}
