package po;

import java.io.File;
import java.io.FileInputStream;
import java.sql.Date;

public class Book {
	
	private int booksku;
	private long isbn;
	private int stockquantity;
	private Double unitprice;
	private String booktitle;
	private String author;
	private String publishtime;
	private Date createon;
	private int sum;
	private float amount;
	public Book(int booksku, long isbn, int stockquantity, Double unitprice,String booktitle) {
		super();
		this.booksku = booksku;
		this.isbn = isbn;
		this.stockquantity = stockquantity;
		this.unitprice = unitprice;
		this.booktitle=booktitle;
	}
	private String file;
	private String description;
	
	
	public Book(long isbn, int stockquantity, Double unitprice,
			String booktitle, String author, String publishtime, String file,
			String description) {
		super();
		this.isbn = isbn;
		this.stockquantity = stockquantity;
		this.unitprice = unitprice;
		this.booktitle = booktitle;
		this.author = author;
		this.publishtime = publishtime;
		this.file = file;
		this.description = description;
	}
	public Book(long iSBN, Integer stockQuantity, Double unitPrice,
			String bookTitle, String author, String publishTime, Date createOn,
			String file, String description) {
		super();
		isbn = iSBN;
		stockquantity = stockQuantity;
		unitprice = unitPrice;
		booktitle = bookTitle;
		this.author = author;
		publishtime = publishTime;
		createon = createOn;
		this.file = file;
		this.description = description;
	}
	public Book(int booksku,long iSBN, Integer stockQuantity, Double unitPrice,
			String bookTitle, String author, String publishTime, 
			String file, String description) {
		
		this.booksku=booksku;
		isbn = iSBN;
		stockquantity = stockQuantity;
		unitprice = unitPrice;
		booktitle = bookTitle;
		this.author = author;
		publishtime = publishTime;
		this.file = file;
		this.description = description;
	}
	public Book(int bookSKU, long iSBN, int stockQuantity,
			Double unitPrice, String bookTitle, String author) {
		super();
		booksku = bookSKU;
		isbn = iSBN;
		stockquantity = stockQuantity;
		unitprice = unitPrice;
		booktitle = bookTitle;
		this.author = author;
	}
	public Book() {
		// TODO Auto-generated constructor stub
	}
	public Book(long isbn2, String title, int sum2) {
		
		// TODO Auto-generated constructor stub
		this.isbn=isbn2;
		this.booktitle=title;
		this.sum=sum2;
	}
	public Book(long isbn2, String title, float amount2) {
		
		// TODO Auto-generated constructor stub
		this.isbn=isbn2;
		this.booktitle=title;
		this.amount=amount2;
	}
	public int getBooksku() {
		return booksku;
	}
	public void setBooksku(int booksku) {
		this.booksku = booksku;
	}
	public long getIsbn() {
		return isbn;
	}
	public void setIsbn(long isbn) {
		this.isbn = isbn;
	}
	public int getStockquantity() {
		return stockquantity;
	}
	public void setStockquantity(int stockquantity) {
		this.stockquantity = stockquantity;
	}
	public Double getUnitprice() {
		return unitprice;
	}
	public void setUnitprice(Double unitprice) {
		this.unitprice = unitprice;
	}
	public String getBooktitle() {
		return booktitle;
	}
	public void setBooktitle(String booktitle) {
		this.booktitle = booktitle;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getPublishtime() {
		return publishtime;
	}
	public void setPublishtime(String publishtime) {
		this.publishtime = publishtime;
	}
	public Date getCreateon() {
		return createon;
	}
	public void setCreateon(Date createon) {
		this.createon = createon;
	}
	public String getFile() {
		return file;
	}
	public void setFile(String file) {
		this.file = file;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getSum() {
		return sum;
	}
	public void setSum(int sum) {
		this.sum = sum;
	}
	public float getAmount() {
		return amount;
	}
	public void setAmount(float amount) {
		this.amount = amount;
	}
	
	
}
