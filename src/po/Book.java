package po;

import java.io.File;
import java.io.FileInputStream;
import java.sql.Date;

public class Book {
	
	Integer BookSKU;
	long ISBN;
	Integer StockQuantity;
	Double UnitPrice;
	String BookTitle;
	String Author;
	String PublishTime;
	Date CreateOn;
	String File;
	String Description;
	public Integer getBookSKU() {
		return BookSKU;
	}
	public void setBookSKU(Integer bookSKU) {
		BookSKU = bookSKU;
	}
	public long getISBN() {
		return ISBN;
	}
	public void setISBN(long iSBN) {
		ISBN = iSBN;
	}
	public Integer getStockQuantity() {
		return StockQuantity;
	}
	public void setStockQuantity(Integer stockQuantity) {
		StockQuantity = stockQuantity;
	}
	public Double getUnitPrice() {
		return UnitPrice;
	}
	public void setUnitPrice(Double unitPrice) {
		UnitPrice = unitPrice;
	}
	public String getBookTitle() {
		return BookTitle;
	}
	public void setBookTitle(String bookTitle) {
		BookTitle = bookTitle;
	}
	public String getAuthor() {
		return Author;
	}
	public void setAuthor(String author) {
		Author = author;
	}
	public String getPublishTime() {
		return PublishTime;
	}
	public void setPublishTime(String publishTime) {
		PublishTime = publishTime;
	}
	public Date getCreateOn() {
		return CreateOn;
	}
	public void setCreateOn(Date createOn) {
		CreateOn = createOn;
	}
	
	public String getFile() {
		return File;
	}
	public void setFile(String file) {
		File = file;
	}
	
	public String getDescription() {
		return Description;
	}
	public void setDescription(String description) {
		Description = description;
	}
	public Book() {
		super();
	}
	
	public Book(long iSBN, Integer stockQuantity, Double unitPrice,
			String bookTitle, String author, String publishTime, Date createOn,
			String file, String description) {
		super();
		ISBN = iSBN;
		StockQuantity = stockQuantity;
		UnitPrice = unitPrice;
		BookTitle = bookTitle;
		Author = author;
		PublishTime = publishTime;
		CreateOn = createOn;
		File = file;
		Description = description;
	}
	
}
