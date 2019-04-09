package Beans;

public class IssuedBookBean {
	
	private int requested_id;
	private String book_name;
	private String url;
	private String user_email;
	private String issued_date;
	private String due_date;
	
	
	
	public int getRequested_id() {
		return requested_id;
	}
	public void setRequested_id(int requested_id) {
		this.requested_id = requested_id;
	}
	public String getBook_name() {
		return book_name;
	}
	public void setBook_name(String book_name) {
		this.book_name = book_name;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public String getIssued_date() {
		return issued_date;
	}
	public void setIssued_date(String issued_date) {
		this.issued_date = issued_date;
	}
	public String getDue_date() {
		return due_date;
	}
	public void setDue_date(String due_date) {
		this.due_date = due_date;
	}
	
	
	

}
