package dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;

import po.Address;
import po.User;

public class UserDao implements IUserDao{

	public User getUserByUsername(String userName) {
		// TODO Auto-generated method stub
		
		String url="jdbc:oracle:thin:@oracle.cise.ufl.edu:1521:orcl";
		String sql="select * from Customer where username='"+userName+"'";
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
				Timestamp time=rs.getTimestamp(2);
				String passwordsalt=rs.getString(3);
				String password=rs.getString(4);
				String email=rs.getString(5);
				String username=rs.getString(6);
				int defaultbillingaddress=rs.getInt(7);
				int defaultshippingaddress=rs.getInt(8);
				User user=new User(id,username,password,passwordsalt,email,time,defaultshippingaddress,defaultbillingaddress);
				return user;
			}
			stmt.close();
			con.close();
		}catch(SQLException ex){
			System.out.println(ex.getMessage());
		}
		return null;
		
	}

	public boolean insertUser(User user) {
		// TODO Auto-generated method stub
		String url="jdbc:oracle:thin:@oracle.cise.ufl.edu:1521:orcl";
		String sql1="select max(ID) from Customer";
		String sql2="insert into Customer values(?,?,?,?,?,?,?,?)";
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");			
		}catch(java.lang.ClassNotFoundException e){
			System.out.println(e.getMessage());
		}
		try{
			Connection con=DriverManager.getConnection(url,"dawei","jolly900513");
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery(sql1);
			int ID = 0;
			while(rs.next()){
				ID=rs.getInt(1)+1;
			}
				PreparedStatement ps=con.prepareStatement(sql2);
				ps.setInt(1, ID);
				ps.setTimestamp(2, user.getCreateTime());
				ps.setString(3, user.getPasswordSalt());
				ps.setString(4, user.getPassword());
				ps.setString(5, user.getEmail());
				ps.setString(6, user.getUsername());
				ps.setInt(7, ID);
				ps.setInt(8, ID);
				System.out.println(sql2);
				ps.executeUpdate();
				stmt.close();
				con.close();
			
		}catch(SQLException ex){
			System.out.println(ex.getMessage());
		}
		return true;
	}

	public boolean insertAddress(Address address) {
		// TODO Auto-generated method stub
		String url="jdbc:oracle:thin:@oracle.cise.ufl.edu:1521:orcl";
		String sql1="select max(ID) from Address";
	    String sql2="insert into address values(?,?,?,?,?,?,?,?,?,?,?)";
		//String sql3="alter session set NLS_DATE_FORMAT='YYYY-MM-DD'";
	    try{
			Class.forName("oracle.jdbc.driver.OracleDriver");			
		}catch(java.lang.ClassNotFoundException e){
			System.out.println(e.getMessage());
		}
		try{
			Connection con=DriverManager.getConnection(url,"dawei","jolly900513");
			Statement stmt=con.createStatement();
			//stmt.executeUpdate(sql3);
			
			ResultSet rs=stmt.executeQuery(sql1);
			int ID = 0;
			while(rs.next()){
				ID=rs.getInt(1)+1;
			}
			PreparedStatement ps=con.prepareStatement(sql2);
			ps.setInt(1,ID);
			ps.setString(2, address.getFirstname());
			ps.setString(3, address.getLastname());
			ps.setString(4, address.getCompany());
			ps.setString(5, address.getState());
			ps.setString(6, address.getPhonenumber());
			ps.setInt(7, address.getZipcode());
			ps.setDate(9, (Date) address.getCreateon());
			ps.setString(8, address.getCity());
			ps.setString(10, address.getAddressline1());
			ps.setString(11, address.getAddressline2());
			System.out.println(sql2);
			ps.executeUpdate();
			stmt.close();
			con.close();
		}catch(SQLException ex){
			System.out.println(ex.getMessage());
		}
		return true;
	}
	
	
	
	

}
