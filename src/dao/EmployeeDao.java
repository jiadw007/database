package dao;

import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;

import po.Book;
import po.Employee;
import po.Order;
import po.User;

public class EmployeeDao implements IEmployeeDAO {

	public Employee getUserByUsername(String loginName) {
		// TODO Auto-generated method stub
		
		String url="jdbc:oracle:thin:@oracle.cise.ufl.edu:1521:orcl";
		String sql="select * from Employee where loginname='"+loginName+"'";
		System.out.println(sql);
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");			
		}catch(java.lang.ClassNotFoundException e){
			System.out.println(e.getMessage());
		}
		try{
			Connection con=DriverManager.getConnection(url,"dawei","jolly900513");
			Statement stmt=con.createStatement();
			
			ResultSet rs=stmt.executeQuery(sql);
			while(rs.next()){
				int id=rs.getInt(1);
				String loginname=rs.getString(2);
				String firstname=rs.getString(3);
				String lastname=rs.getString(4);
				String password=rs.getString(5);
				String passwordsalt=rs.getString(6);
				int ismanager=rs.getInt(7);
				Employee employee=new Employee(id,loginname,firstname,lastname,password,passwordsalt,ismanager);
				return employee;
			}
			
		}catch(SQLException ex){
			System.out.println(ex.getMessage());
		}
		return null;
	}
    
	public boolean getBookByISBN(long ISBN) {
		// TODO Auto-generated method stub
		String url="jdbc:oracle:thin:@oracle.cise.ufl.edu:1521:orcl";
		String sql="select * from book where ISBN="+ISBN;
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");			
		}catch(java.lang.ClassNotFoundException e){
			System.out.println(e.getMessage());
		}
		try{
			Connection con=DriverManager.getConnection(url,"dawei","jolly900513");
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery(sql);
			while(rs.next()){
				int BookSKU=rs.getInt(1);
				String booktitle=rs.getString(5);
				return true;
			}
			
		}catch(SQLException ex){
			System.out.println(ex.getMessage());
		}
		return false;
	}
    
	public Book getBookByBooksku(int booksku) {
		// TODO Auto-generated method stub
		String url="jdbc:oracle:thin:@oracle.cise.ufl.edu:1521:orcl";
		String sql="select * from book where BOOKSKU="+booksku;
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");			
		}catch(java.lang.ClassNotFoundException e){
			System.out.println(e.getMessage());
		}
		try{
			Connection con=DriverManager.getConnection(url,"dawei","jolly900513");
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery(sql);
			while(rs.next()){
				int bs=rs.getInt(1);
				long isbn=rs.getLong(2);
				int sq=rs.getInt(3);
				double ut=rs.getDouble(4);
				Book book=new Book(bs,isbn,sq,ut);
				return book;
			}
			
		}catch(SQLException ex){
			System.out.println(ex.getMessage());
		}
		return null;
	}

	public boolean InsertBook(Book book) {
		// TODO Auto-generated method stub
		String url="jdbc:oracle:thin:@oracle.cise.ufl.edu:1521:orcl";
		String sql1="select max(BookSKU) from Book";
		String sql2="Insert into Book values(?,?,?,?,?,?,?,?,?,?)";
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");			
		}catch(java.lang.ClassNotFoundException e){
			System.out.println(e.getMessage());
		}
		try{
			Connection con=DriverManager.getConnection(url,"dawei","jolly900513");
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery(sql1);
			int bookSKU = 0;
			while(rs.next()){
				bookSKU=rs.getInt(1)+1;
				System.out.print(bookSKU);
			}
			PreparedStatement ps=con.prepareStatement(sql2);
			ps.setInt(1, bookSKU);
			ps.setLong(2, book.getIsbn());
			ps.setInt(3, book.getStockquantity());
			ps.setDouble(4, book.getUnitprice());
			ps.setString(5, book.getBooktitle());
			ps.setString(6, book.getAuthor());
			ps.setDate(7,book.getCreateon());
			ps.setString(8, book.getDescription());
			ps.setString(9, book.getFile());
			ps.setString(10, book.getPublishtime());
			ps.executeUpdate();
			stmt.close();
			con.close();
		}catch(SQLException ex){
			System.out.println(ex.getMessage());
		}
		
		
		return true;
	}
	public ArrayList QueryUser() {
		// TODO Auto-generated method stub
		String url="jdbc:oracle:thin:@oracle.cise.ufl.edu:1521:orcl";
		String sql="select * from Customer";
		System.out.println(sql);
		ArrayList Users=new ArrayList();
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");			
		}catch(java.lang.ClassNotFoundException e){
			System.out.println(e.getMessage());
		}
		try{
			Connection con=DriverManager.getConnection(url,"dawei","jolly900513");
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery(sql);
			while(rs.next()){
				int id=rs.getInt(1);
				Timestamp time=rs.getTimestamp(2);
				String passwordsalt=rs.getString(3);
				String password=rs.getString(4);
				String email=rs.getString(5);
				String username=rs.getString(6);
				int defaultbillingaddress=rs.getInt(7);
				int defaultshippingaddress=rs.getInt(8);
				User user=new User(id,username,password,passwordsalt,email,time,defaultshippingaddress,defaultbillingaddress);
				Users.add(user);
			}
			stmt.close();
			con.close();
		}catch(SQLException ex){
			System.out.println(ex.getMessage());
		}
		
		return Users;
	}

	public boolean deleteUserByUsername(String userName) {
		// TODO Auto-generated method stub
		String url="jdbc:oracle:thin:@oracle.cise.ufl.edu:1521:orcl";
		String sql="delete from Customer where username='"+userName+"'";
		System.out.println(sql);
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");			
		}catch(java.lang.ClassNotFoundException e){
			System.out.println(e.getMessage());
		}
		try{
			Connection con=DriverManager.getConnection(url,"dawei","jolly900513");
			Statement stmt=con.createStatement();
			stmt.executeUpdate(sql);
			stmt.close();
			con.close();
		}catch(SQLException ex){
			System.out.println(ex.getMessage());
		}
		return true;
	}

	public ArrayList QueryBook() {
		String url="jdbc:oracle:thin:@oracle.cise.ufl.edu:1521:orcl";
		String sql="select * from Book";
		System.out.println(sql);
		ArrayList Books=new ArrayList();
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");			
		}catch(java.lang.ClassNotFoundException e){
			System.out.println(e.getMessage());
		}
		try{
			Connection con=DriverManager.getConnection(url,"dawei","jolly900513");
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery(sql);
			while(rs.next()){
				int booksku=rs.getInt(1);
				long isbn=rs.getLong(2);
				int stockquantity=rs.getInt(3);
				double unitprice=rs.getDouble(4);
				String booktitle=rs.getString(5);
				String author=rs.getString(6);
				Book book=new Book(booksku,isbn,stockquantity,unitprice,booktitle,author);
				Books.add(book);
			}
			stmt.close();
			con.close();
		}catch(SQLException ex){
			System.out.println(ex.toString());
			System.out.println(ex.getMessage());
		}
		return Books;
	}

	public ArrayList QueryOrder() {
		// TODO Auto-generated method stub
		String url="jdbc:oracle:thin:@oracle.cise.ufl.edu:1521:orcl";
		String sql="select * from Orders";
		System.out.println(sql);
		ArrayList Orders=new ArrayList();
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");			
		}catch(java.lang.ClassNotFoundException e){
			System.out.println(e.getMessage());
		}
		try{
			Connection con=DriverManager.getConnection(url,"dawei","jolly900513");
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery(sql);
			while(rs.next()){
				int id=rs.getInt(1);
				String status=rs.getString(2);
				Timestamp placedate=rs.getTimestamp(3);
				long transactionid=rs.getLong(4);
				float amount=rs.getFloat(10);
				int shippingaddr=rs.getInt(5);
				int customer=rs.getInt(6);
				int employee=rs.getInt(7);
				int qu=rs.getInt(8);
				int sku=rs.getInt(9);
				Order order=new Order(id,status,placedate,transactionid,amount,shippingaddr,customer,employee,qu,sku);
				Orders.add(order);
			}
			stmt.close();
			con.close();
		}catch(SQLException ex){
			System.out.println(ex.toString());
			System.out.println(ex.getMessage());
		}
		return Orders;
	}

	public boolean updateBook(int booksku, int stockquantity, double unitprice) {
		// TODO Auto-generated method stub
		String url="jdbc:oracle:thin:@oracle.cise.ufl.edu:1521:orcl";
		String sql="update Book set stockquantity= "+stockquantity+",unitprice="+unitprice+"where booksku="+booksku;
		System.out.println(sql);
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");			
		}catch(java.lang.ClassNotFoundException e){
			System.out.println(e.getMessage());
		}
		try{
			Connection con=DriverManager.getConnection(url,"dawei","jolly900513");
			Statement stmt=con.createStatement();
			stmt.executeUpdate(sql);
			stmt.close();
			con.close();
			return true;
		}catch(SQLException ex){
			System.out.println(ex.toString());
			System.out.println(ex.getMessage());
		}
		return false;
	}
	
    
	

}
