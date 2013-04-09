package dao;

import java.util.ArrayList;

import po.Book;
import po.Employee;
import po.Order;

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
	
	public abstract ArrayList selectTopBook();
	
	public abstract ArrayList selectTopBuyer();
	
	public abstract ArrayList selectTopSale();
	
	public abstract ArrayList selectTopSupplier();
	
	public abstract Order getOrderbyId(int id);
	
	public abstract boolean updateOrder(int eid, String status,int id);
	
	public abstract ArrayList advanceSelectTopBook(String from,String to);
	
	public abstract ArrayList advanceSelectTopBuyer(String from,String to);
	
	public abstract ArrayList advanceSelectTopSale(String from,String to);
	
	public abstract ArrayList advanceSelectTopSupplier(String from,String to);
	
	public abstract ArrayList timeseries();

}
