package dao;

import java.util.ArrayList;

import po.Book;
import po.Employee;

public interface IEmployeeDAO {
	
	public abstract Employee getUserByUsername(String loginName);
	
	public abstract boolean InsertBook(Book book);
	
	public abstract boolean getBookByISBN(long ISBN);
    
	public abstract ArrayList QueryUser();
	
	public abstract boolean deleteUserByUsername(String userName);
	
	public abstract ArrayList QueryBook();
	
	public abstract ArrayList QueryOrder();
	
	public abstract Book getBookByBooksku(int booksku);
	
	public abstract boolean updateBook(int booksku,int stockquantity,double unitprice);

}
