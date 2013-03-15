package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;

import po.Book;
import po.Employee;

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

	public boolean InsertBook(Book book) {
		// TODO Auto-generated method stub
		String url="jdbc:oracle:thin:@oracle.cise.ufl.edu:1521:orcl";
		String sql1="select max(BookSKU) from Book";
		String sql2="Insert into Book values(?,?,?,?,?,?,?,?,?)";
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
			}
			PreparedStatement ps=con.prepareStatement(sql2);
			ps.setInt(1, bookSKU);
			ps.setLong(2, book.getISBN());
			ps.setInt(3, book.getStockQuantity());
			ps.setDouble(4, book.getUnitPrice());
			ps.setString(5, book.getBookTitle());
			ps.setString(6, book.getAuthor());
			
			ps.setDate(7,book.getCreateOn());
			ps.setString(8, book.getDescription());
			ps.setString(9, book.getFile());
			ps.setString(10, book.getPublishTime());
			ps.executeUpdate();
			stmt.close();
			con.close();
		}catch(SQLException ex){
			System.out.println(ex.getMessage());
		}
		
		
		return true;
	}
	
	

}
