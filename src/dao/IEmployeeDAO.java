package dao;

import po.Book;
import po.Employee;

public interface IEmployeeDAO {
	
	public abstract Employee getUserByUsername(String loginName);
	
	public abstract boolean InsertBook(Book book);
	
	public abstract boolean getBookByISBN(long ISBN);

}
