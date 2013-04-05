package dao;

import java.util.ArrayList;

import po.Address;
import po.Book;
import po.Credit;
import po.Order;
import po.User;


public interface IUserDao {
	
	public abstract User getUserByUsername(String userName);
	
	public abstract boolean insertUser(User user);
	
	public abstract boolean insertAddress(Address address);
	
	public abstract ArrayList searchBook(String attribute,String value);
	
	public abstract ArrayList advancedsearchBook(String isbn,String author,String title,String year,String time);
    
	public abstract Book queryBook(String value);
	
	public abstract boolean updateUser(User user);
	
	/*Address*/
	
	public abstract ArrayList queryAddress(int id);
	
	public abstract boolean addNewAddress(int id, Address address);
	
	public abstract Address checkAddress(int id);
	
	public abstract boolean updateAddress(Address address);
	
	public abstract boolean deleteAddress(int aid);
	
	
	/*Credit Card*/
	public abstract ArrayList queryCredit(int id);
	
	public abstract boolean addNewCredit(int cid, Credit credit);
	
	public abstract Credit checkCredit(long cardnumber);
	
	public abstract boolean updateCredit(Credit credit);
	
	public abstract boolean deleteCredit(long cardnumber);
	
	/*check order*/
	
	public abstract ArrayList checkOrder(int cid);
	
	public abstract Address shipDetails(int oid);
	
	public abstract Book bookDetails(int oid);
	
	public abstract boolean addNewOrder(Order order);
	
	public abstract boolean updateBook(int sku,int quantity);
}
