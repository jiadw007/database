package po;

import java.sql.Timestamp;

public class Review {
	
	public Review(String title, String body, int rating, Timestamp time,
			String username) {
		// TODO Auto-generated constructor stub
		
		this.title=title;
		
		this.body=body;
		
		this.rating=rating;
		
		this.reviewondate=time;
		
		this.username=username;
	}

	private int booksku;
	
	private int customer;
	
	private String title;
	
	private int id;
	
	private String body;
	
	private int rating;
	
	private Timestamp reviewondate;
	
	private String username;

	public int getBooksku() {
		return booksku;
	}

	public void setBooksku(int booksku) {
		this.booksku = booksku;
	}

	public int getCustomer() {
		return customer;
	}

	public void setCustomer(int customer) {
		this.customer = customer;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getBody() {
		return body;
	}

	public void setBody(String body) {
		this.body = body;
	}

	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	public Timestamp getReviewondate() {
		return reviewondate;
	}

	public void setReviewondate(Timestamp reviewondate) {
		this.reviewondate = reviewondate;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}
	
	

}
