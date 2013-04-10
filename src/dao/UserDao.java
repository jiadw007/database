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
import java.util.ArrayList;

import po.Address;
import po.Book;
import po.Credit;
import po.Order;
import po.Review;
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
		String sql3="insert into CustomerAddr values(?,?)";
		String sql4="select max(ID) from Address";
		System.out.println(sql2);
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
			int ID2 = 0;
			while(rs.next()){
				ID=rs.getInt(1)+1;
				System.out.println(ID);
			}
			ResultSet rs2=stmt.executeQuery(sql4);
			while(rs2.next()){
				ID2=rs2.getInt(1);
				System.out.println(ID2);
			}
				PreparedStatement ps=con.prepareStatement(sql2);
				ps.setInt(1, ID);
				ps.setTimestamp(2, user.getCreateTime());
				ps.setString(3, user.getPasswordSalt());
				ps.setString(4, user.getPassword());
				ps.setString(5, user.getEmail());
				ps.setString(6, user.getUsername());
				ps.setInt(7, ID2);
				ps.setInt(8, ID2);
				ps.executeUpdate();
				ps=con.prepareStatement(sql3);
				System.out.println(sql3);
				ps.setInt(1, ID);
				ps.setInt(2,ID2);
				ps.executeUpdate();
				stmt.close();
				con.close();
			    return true;
		}catch(SQLException ex){
			System.out.println(ex.getMessage());
		}
		return false;
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
			return true;
		}catch(SQLException ex){
			System.out.println(ex.getMessage());
		}
		return false;
	}

	public ArrayList searchBook(String attribute, String value) {
	
		// TODO Auto-generated method stub
		String sql="select * from Book where UPPER("+attribute+") like '%"+value.toUpperCase()+"%'";
		if(attribute.equals("isbn")){
			try{
				long isbn1=Long.parseLong(value);
				sql="select * from Book where "+attribute+"="+isbn1;
			}catch(NumberFormatException e){
				return null;
			}
			
		}
		String url="jdbc:oracle:thin:@oracle.cise.ufl.edu:1521:orcl";
		//System.out.println(attribute);
		//System.out.println(value);
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
				long isbn=rs.getLong(2);
				int sq=rs.getInt(3);
			    Double up=rs.getDouble(4);
				String booktitle=rs.getString(5);
				String author=rs.getString(6);
				String description=rs.getString(8);
				String image=rs.getString(9);
				String pt=rs.getString(10);
				Book book=new Book(isbn,sq,up,booktitle,author,pt,image,description);
			    Books.add(book);
			}
			stmt.close();
			con.close();
			return Books;
		}catch(SQLException ex){
			System.out.println(ex.getMessage());
		}
		return null;
	}

	
	public ArrayList advancedsearchBook(String isbn,String author,String title,String year,String time) {
		// TODO Auto-generated method stub
		String sql="select * from Book where ";
		String sql1=sql;
		System.out.println(isbn);
		System.out.println(author);
		System.out.println(title);
		System.out.println(year);
		System.out.println(time);
		
		if(isbn!=""){
			try{
				long isbn1=Long.parseLong(isbn);
				sql1=sql+"isbn="+isbn1;
			}catch(NumberFormatException e){
				return null;
			}
			
		}
		if(author!=""){
			
			if(sql1!=sql){
				
				sql1=sql1+" and author likr '%"+author+"%'";
			}else{
				sql1=sql+"author like '%"+author+"%'";
			}
		}
		
		if(title!=""){
			
			if(sql1!=sql){
				sql1=sql1+" and Upper(booktitle) like '%"+title.toUpperCase()+"%'";
			}else{
				sql1=sql+"Upper(booktitle) like '%"+title.toUpperCase()+"%'";
			}
		}

		if(time!="Any"&&year!=""){
			if(sql1!=sql){
				sql1=sql1+" and publishtime"+year;
			}else{
				sql1=sql+"publishtime"+year;
			}
		}
		String url="jdbc:oracle:thin:@oracle.cise.ufl.edu:1521:orcl";
		System.out.println(sql1);
		ArrayList Books=new ArrayList();
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");			
		}catch(java.lang.ClassNotFoundException e){
			System.out.println(e.getMessage());
		}
		try{
			Connection con=DriverManager.getConnection(url,"dawei","jolly900513");
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery(sql1);
			while(rs.next()){	
				long isbn1=rs.getLong(2);
				int sq=rs.getInt(3);
			    Double up=rs.getDouble(4);
				String booktitle=rs.getString(5);
				String author1=rs.getString(6);
				String description=rs.getString(8);
				String image=rs.getString(9);
				String pt=rs.getString(10);
				Book book=new Book(isbn1,sq,up,booktitle,author1,pt,image,description);
			    Books.add(book);
			}
			stmt.close();
			con.close();
			return Books;
		}catch(SQLException ex){
			System.out.println(ex.getMessage());
		}
		return null;
	}



	public Book queryBook(String value) {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
		String sql="select * from Book where isbn="+Long.parseLong(value);
			
		String url="jdbc:oracle:thin:@oracle.cise.ufl.edu:1521:orcl";
		//System.out.println(attribute);
		//System.out.println(value);
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
				int booksku=rs.getInt(1);
				long isbn=rs.getLong(2);
				int sq=rs.getInt(3);
				Double up=rs.getDouble(4);
				String booktitle=rs.getString(5);
				String author=rs.getString(6);
				String description=rs.getString(8);
				String image=rs.getString(9);
				String pt=rs.getString(10);
				Book book=new Book(booksku,isbn,sq,up,booktitle,author,pt,image,description);
				   
				return book;
			}
			stmt.close();
		    con.close();

		}catch(SQLException ex){
			System.out.println(ex.getMessage());
		}
		return null;		
	}



	public boolean updateUser(User user) {
		// TODO Auto-generated method stub
		String sql="update Customer set password='"+user.getPassword()+"',passwordsalt='"+user.getPasswordSalt()+"',email='"+user.getEmail()+"' where username='"+user.getUsername()+"'" ;
		String url="jdbc:oracle:thin:@oracle.cise.ufl.edu:1521:orcl";
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
				System.out.println(ex.getMessage());
			}
		
		return false;
	}



	public ArrayList queryAddress(int id) {
		// TODO Auto-generated method stub
		String sql="select Address.ID, firstname,lastname,company,state,phonenumber,zipcode,city,addr_line1,addr_line2 from Address, Customer,CustomerAddr where Customer.ID="+id+" and Customer.ID=CID and Address.ID=ADDRID";
		String url="jdbc:oracle:thin:@oracle.cise.ufl.edu:1521:orcl";
		ArrayList adds=new ArrayList();
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
				int aid=rs.getInt(1);
				String fn=rs.getString(2);
				String ln=rs.getString(3);
				String cm=rs.getString(4);
				String state=rs.getString(5);
				String pn=rs.getString(6);
				int zipcode=rs.getInt(7);
				String city=rs.getString(8);
				String add1=rs.getString(9);
				String add2=rs.getString(10);
				Address address=new Address(aid,fn,ln,cm,state,pn,zipcode,city,add1,add2);
			    adds.add(address);
			}
			stmt.close();
			con.close();
			
			return adds;
			
		}catch(SQLException ex){
				System.out.println(ex.getMessage());
			}
		
		
		return null;
	}



	public boolean addNewAddress(int id, Address address) {
		// TODO Auto-generated method stub
		String url="jdbc:oracle:thin:@oracle.cise.ufl.edu:1521:orcl";
		String sql1="select max(ID) from Address";
	    String sql2="insert into address values(?,?,?,?,?,?,?,?,?,?,?)";
		String sql3="insert into CustomerAddr values(?,?)";
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
				ps=con.prepareStatement(sql3);
				ps.setInt(1, id);
				ps.setInt(2,ID);
				System.out.println(sql3);
				ps.executeUpdate();
				stmt.close();
				con.close();
				return true;
			}catch(SQLException ex){
				System.out.println(ex.getMessage());
			}
			return false;
	}

	public Address checkAddress(int id) {
		// TODO Auto-generated method stub
		String url="jdbc:oracle:thin:@oracle.cise.ufl.edu:1521:orcl";
		String sql="select firstname,lastname,company,state,phonenumber,zipcode,city,addr_line1,addr_line2 from Address where ID="+id;
		Address address=new Address();
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
				
				String fn=rs.getString(1);
				String ln=rs.getString(2);
				String cm=rs.getString(3);
				String state=rs.getString(4);
				String pn=rs.getString(5);
				int zipcode=rs.getInt(6);
				String city=rs.getString(7);
				String add1=rs.getString(8);
				String add2=rs.getString(9);
				address=new Address(fn,ln,cm,state,pn,zipcode,city,add1,add2);
				
			}
			stmt.close();
			con.close();
			return address;
		}catch(SQLException ex){
			System.out.println(ex.getMessage());
		}
		return null;
	}



	public boolean updateAddress(Address address) {
		// TODO Auto-generated method stub
		int id =address.getId();
		String url="jdbc:oracle:thin:@oracle.cise.ufl.edu:1521:orcl";
		String sql="update Address set firstname='"+address.getFirstname()+"',"
		           +"lastname='"+address.getLastname()+"',"
				   +"company='"+address.getCompany()+"',"
				   +"state='"+address.getState()+"',"
				   +"phonenumber='"+address.getPhonenumber()+"',"
				   +"zipcode="+address.getZipcode()+","
				   +"city='"+address.getCity()+"',"
				   +"addr_line1='"+address.getAddressline1()+"',"
				   +"addr_line2='"+address.getAddressline2()+"' where "
				   +"id="+id;
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");			
		}catch(java.lang.ClassNotFoundException e){
			System.out.println(e.getMessage());
		}
		try{
			Connection con=DriverManager.getConnection(url,"dawei","jolly900513");
			Statement stmt=con.createStatement();
			System.out.println(sql);
			stmt.executeUpdate(sql);
			stmt.close();
			con.close();
			return true;
		}catch(SQLException ex){
				System.out.println(ex.getMessage());
			}
		
		return false;
	}



	public boolean deleteAddress(int aid) {
		// TODO Auto-generated method stub
		String url="jdbc:oracle:thin:@oracle.cise.ufl.edu:1521:orcl";
		String sql1="delete from Address where id="+aid;
		String sql2="delete from CustomerAddr where addrid="+aid;
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");			
		}catch(java.lang.ClassNotFoundException e){
			System.out.println(e.getMessage());
		}
		try{
			Connection con=DriverManager.getConnection(url,"dawei","jolly900513");
			Statement stmt=con.createStatement();
			System.out.println(sql2);
			stmt.executeUpdate(sql2);
			System.out.println(sql1);
			stmt.executeUpdate(sql1);
			stmt.close();
			con.close();
			return true;
		}catch(SQLException ex){
				System.out.println(ex.getMessage());
			}
		return false;
	}



	public ArrayList queryCredit(int id) {
		// TODO Auto-generated method stub
		String sql="select cardnumber,nameoncard,experiondate,cardtype,billing_addr,firstname,lastname,state,phonenumber,zipcode,city,addr_line1,addr_line2,company " +
				   "from Address a, Customer c,CustomerCredit cc,CreditCard cr" +
				   " where c.ID="+id
				    +" and c.ID=cc.CID and cc.CDID=cr.cardnumber and cr.billing_addr=a.id";
		String url="jdbc:oracle:thin:@oracle.cise.ufl.edu:1521:orcl";
		ArrayList credits=new ArrayList();
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
				long cardnumber=rs.getLong(1);
				String name=rs.getString(2);
				Date ex=rs.getDate(3);
				String cardtype=rs.getString(4);
				int billing=rs.getInt(5);	
				String fn=rs.getString(6);
				String ln=rs.getString(7);
				String state=rs.getString(8);
				String pn=rs.getString(9);
				int zipcode=rs.getInt(10);
				String city=rs.getString(11);
				String add1=rs.getString(12);
				String add2=rs.getString(13);
				String company=rs.getString(14);
				Credit credit=new Credit(cardnumber,name,ex,cardtype,billing,ln,fn,state,city,company,zipcode,pn,add1,add2);
			    credits.add(credit);
			}
			stmt.close();
			con.close();
			
			return credits;
			
		}catch(SQLException ex){
				System.out.println(ex.getMessage());
			}
		
		
		return null;

	}



	public boolean addNewCredit(int cid, Credit credit) {
		// TODO Auto-generated method stub
		String url="jdbc:oracle:thin:@oracle.cise.ufl.edu:1521:orcl";
		String sql1="select max(ID) from Address";
	    String sql2="insert into address values(?,?,?,?,?,?,?,?,?,?,?)";
	    String sql3="insert into CreditCard values(?,?,?,?,?,?)";
	    String sql4="insert into CustomerCredit values(?,?)";
		
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
				int ID = 0;  //address id
				while(rs.next()){
					ID=rs.getInt(1)+1;
				}
				PreparedStatement ps=con.prepareStatement(sql2);
				ps.setInt(1,ID);
				ps.setString(2, credit.getFirstname());
				ps.setString(3, credit.getLastname());
				ps.setString(4, credit.getCompany());
				ps.setString(5, credit.getState());
				ps.setString(6, credit.getPhonenumber());
				ps.setInt(7, credit.getZipcode());
				ps.setDate(9, new Date(System.currentTimeMillis()));
				ps.setString(8, credit.getCity());
				ps.setString(10, credit.getAddressline1());
				ps.setString(11, credit.getAddressline2());
				System.out.println(sql2);
				ps.executeUpdate();
				ps=con.prepareStatement(sql3);
				ps.setLong(1, credit.getCardNumber());
				ps.setString(2, credit.getNameOnCard());
				ps.setInt(3, credit.getCaredCVV2());
				ps.setDate(4, credit.getExperionDate());
				ps.setString(5, credit.getCardType());
				ps.setInt(6, ID);
				System.out.println(sql3);
				ps.executeUpdate();
				ps=con.prepareStatement(sql4);
				System.out.println(sql4);
				ps.setInt(1, cid);
				ps.setLong(2, credit.getCardNumber());
				ps.executeUpdate();
				stmt.close();
				con.close();
				return true;
				
		 }catch(SQLException ex){
				System.out.println(ex.getMessage());
			}
		return false;
	}



	public Credit checkCredit(long cardnumber) {
		// TODO Auto-generated method stub
		String url="jdbc:oracle:thin:@oracle.cise.ufl.edu:1521:orcl";
		String sql="select cardnumber,nameoncard,experiondate,cardtype,firstname,lastname,company,state,phonenumber,zipcode,city,addr_line1,addr_line2,cardcvv2 " +
				   "from Address,CreditCard where cardnumber="+cardnumber
				   +" and billing_addr=address.id";
		System.out.println(sql);
		Credit credit=new Credit();
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
				
				long cn=rs.getLong(1);
				String name=rs.getString(2);
				Date ex=rs.getDate(3);
				String ct=rs.getString(4);
				String fn=rs.getString(5);
				String ln=rs.getString(6);
				String cm=rs.getString(7);
				String state=rs.getString(8);
				String pn=rs.getString(9);
				int zipcode=rs.getInt(10);
				String city=rs.getString(11);
				String add1=rs.getString(12);
				String add2=rs.getString(13);
				int cvv2=rs.getInt(14);
				credit=new Credit(cardnumber,name,ex,cvv2,ct,ln,fn,state,city,cm,zipcode,pn,add1,add2);
				
			}
			stmt.close();
			con.close();
			return credit;
		}catch(SQLException ex){
			System.out.println(ex.getMessage());
		}
		return null;
	}



	public boolean updateCredit(Credit credit) {
		// TODO Auto-generated method stub
		long cn=credit.getCardNumber();
		String url="jdbc:oracle:thin:@oracle.cise.ufl.edu:1521:orcl";
		String sql1="update CreditCard set nameoncard='"
		            +credit.getNameOnCard()+"',"
		            +"experiondate=to_date('"+credit.getExperionDate()+"','YYYY-MM-DD'),"
		            +"cardcvv2="+credit.getCaredCVV2()+","
		            +"cardtype='"+credit.getCardType()+"' where cardnumber="
		            +cn;
		String sql2="update Address "
				   +"set firstname='"+credit.getFirstname()+"',"
		           +"lastname='"+credit.getLastname()+"',"
				   +"company='"+credit.getCompany()+"',"
				   +"state='"+credit.getState()+"',"
				   +"phonenumber='"+credit.getPhonenumber()+"',"
				   +"zipcode="+credit.getZipcode()+","
				   +"city='"+credit.getCity()+"',"
				   +"addr_line1='"+credit.getAddressline1()+"',"
				   +"addr_line2='"+credit.getAddressline2()+"' where id in ( select billing_addr from CreditCard where cardnumber="
				   +cn+")";
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");			
		}catch(java.lang.ClassNotFoundException e){
			System.out.println(e.getMessage());
		}
		try{
			Connection con=DriverManager.getConnection(url,"dawei","jolly900513");
			Statement stmt=con.createStatement();
			System.out.println(sql1);
			stmt.executeUpdate(sql1);
			System.out.println(sql2);
			stmt.executeUpdate(sql2);
			stmt.close();
			con.close();
			return true;
		}catch(SQLException ex){
				System.out.println(ex.getMessage());
			}
		
		return false;
	}



	public boolean deleteCredit(long cardnumber) {
		// TODO Auto-generated method stub
		String url="jdbc:oracle:thin:@oracle.cise.ufl.edu:1521:orcl";
		String sql1="delete from CreditCard where cardnumber="+cardnumber;
		String sql2="delete from CustomerCredit where cdid="+cardnumber;
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");			
		}catch(java.lang.ClassNotFoundException e){
			System.out.println(e.getMessage());
		}
		try{
			Connection con=DriverManager.getConnection(url,"dawei","jolly900513");
			Statement stmt=con.createStatement();
			System.out.println(sql2);
			stmt.executeUpdate(sql2);
			System.out.println(sql1);
			stmt.executeUpdate(sql1);
			stmt.close();
			con.close();
			return true;
		}catch(SQLException ex){
				System.out.println(ex.getMessage());
			}
		return false;
	}



	public ArrayList checkOrder(int cid) {
		// TODO Auto-generated method stub
		String sql="select * from orders where customer="+cid;
		String url="jdbc:oracle:thin:@oracle.cise.ufl.edu:1521:orcl";
		ArrayList orders=new ArrayList();
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");			
		}catch(java.lang.ClassNotFoundException e){
			System.out.println(e.getMessage());
		}
		try{
			Connection con=DriverManager.getConnection(url,"dawei","jolly900513");
			Statement stmt=con.createStatement();
			System.out.println(sql);
			ResultSet rs=stmt.executeQuery(sql);
			while(rs.next()){
				int id=rs.getInt(1);
				String status=rs.getString(2);
				Timestamp date=rs.getTimestamp(3);
				long tid=rs.getInt(4);
				int ship=rs.getInt(5);
				int customer=rs.getInt(6);
				int employee=rs.getInt(7);
				int qu=rs.getInt(8);
				int sku=rs.getInt(9);
				float amount=rs.getFloat(10);
				Order order=new Order(id,status,date,tid,ship,customer,employee,qu,sku,amount);
			    orders.add(order);
			}
			stmt.close();
			con.close();
			return orders;
		}catch(SQLException ex){
			System.out.println(ex.getMessage());
		}
		
		return null;
	}



	public Address shipDetails(int oid) {
		// TODO Auto-generated method stub
		String url="jdbc:oracle:thin:@oracle.cise.ufl.edu:1521:orcl";
		String sql="select * from address where id in (select shipping_addr from orders where id="+oid+")";
		Address address=new Address();
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");			
		}catch(java.lang.ClassNotFoundException e){
			System.out.println(e.getMessage());
		}
		try{
			Connection con=DriverManager.getConnection(url,"dawei","jolly900513");
			Statement stmt=con.createStatement();
			System.out.println(sql);
			ResultSet rs=stmt.executeQuery(sql);
			while(rs.next()){
				String fn=rs.getString(2);
				String ln=rs.getString(3);
				String cm=rs.getString(4);
				String state=rs.getString(5);
				String pn=rs.getString(6);
				int zipcode=rs.getInt(7);
				String city=rs.getString(8);
				String add1=rs.getString(10);
				String add2=rs.getString(11);
				address=new Address(fn,ln,cm,state,pn,zipcode,city,add1,add2);
			}
			stmt.close();
			con.close();
			return address;
		}catch(SQLException ex){
			System.out.println(ex.getMessage());
		}
		return null;
	}



	public Book bookDetails(int oid) {
		// TODO Auto-generated method stub
		String url="jdbc:oracle:thin:@oracle.cise.ufl.edu:1521:orcl";
		String sql="select * from book where booksku in (select sku from orders where id="+oid+")";
		Book book=new Book();
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
		}catch(java.lang.ClassNotFoundException e){
			System.out.println(e.getMessage());
		}
		try{
			Connection con=DriverManager.getConnection(url,"dawei","jolly900513");
			Statement stmt=con.createStatement();
			System.out.println(sql);
			ResultSet rs=stmt.executeQuery(sql);
			while(rs.next()){
				int booksku=rs.getInt(1);
				long isbn=rs.getLong(2);
				int sq=rs.getInt(3);
				Double up=rs.getDouble(4);
				String booktitle=rs.getString(5);
				String author=rs.getString(6);
				String description=rs.getString(8);
				String image=rs.getString(9);
				String pt=rs.getString(10);
				book=new Book(booksku,isbn,sq,up,booktitle,author,pt,image,description);
			}
			stmt.close();
			con.close();
			return book;
		}catch(SQLException ex){
			System.out.println(ex.getMessage());
		}
		return null;
	}



	public boolean addNewOrder(Order order) {
		// TODO Auto-generated method stub
		String sql2="insert into orders(id,status,placeondate,shipping_addr,customer,quantity,sku,amount,transactionid) values(?,?,?,?,?,?,?,?,?)";
		String url="jdbc:oracle:thin:@oracle.cise.ufl.edu:1521:orcl";
		String sql1="select max(ID),max(transactionid) from orders";
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
		}catch(java.lang.ClassNotFoundException e){
			System.out.println(e.getMessage());
		}
		try{
			Connection con=DriverManager.getConnection(url,"dawei","jolly900513");
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery(sql1);
			System.out.println(sql1);
			int ID = 0;
			int tid=0;
			while(rs.next()){
				ID=rs.getInt(1)+1;
				tid=rs.getInt(2)+1;
			}
			System.out.println(ID);
			System.out.println(tid);
			PreparedStatement ps=con.prepareStatement(sql2);
			System.out.println(sql2);
			ps.setInt(1, ID);
			ps.setString(2, order.getStatus());
			ps.setTimestamp(3, order.getPlaceOnDate());
			ps.setInt(4, order.getShippingAddress());
			ps.setInt(5, order.getCustomerId());
			ps.setInt(6, order.getQuantity());
			ps.setInt(7, order.getSku());
			ps.setFloat(8, order.getAmount());
			ps.setInt(9, tid);
			//System.out.println(sql2);
			ps.executeUpdate();
			stmt.close();
			con.close();
			return true;
		}catch(SQLException ex){
			System.out.println(ex.getMessage());
		}
		return false;
	}



	public boolean updateBook(int sku, int quantity) {
		// TODO Auto-generated method stub
		String url="jdbc:oracle:thin:@oracle.cise.ufl.edu:1521:orcl";
		String sql="update book set stockquantity=(select stockquantity from book where booksku="+sku+")-"+quantity+" where booksku="+sku;
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
		}catch(java.lang.ClassNotFoundException e){
			System.out.println(e.getMessage());
		}
		try{
			Connection con=DriverManager.getConnection(url,"dawei","jolly900513");
			Statement stmt=con.createStatement();
			System.out.println(sql);
			stmt.executeUpdate(sql);
			stmt.close();
			con.close();
			return true;
		}catch(SQLException ex){
				System.out.println(ex.getMessage());
			}
		
		return false;
	}



	public ArrayList getReviewForOneBook(int sku) {
		// TODO Auto-generated method stub
		String url="jdbc:oracle:thin:@oracle.cise.ufl.edu:1521:orcl";
		String sql="select r.title, r.body, r.rating, r.reviewondate, c.username from review r, book b, customer c where r.booksku=b.booksku and r.customer_id=c.id and r.booksku="+sku;
		ArrayList reviews=new ArrayList();
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
				String title=rs.getString(1);
				String body=rs.getString(2);
				int rating=rs.getInt(3);
				Timestamp time=rs.getTimestamp(4);
				String username=rs.getString(5);
				Review review=new Review(title,body,rating,time,username);
				reviews.add(review);
			}
			stmt.close();
			con.close();
			return reviews;
		}catch(SQLException ex){
				System.out.println(ex.getMessage());
			}
		
		return null;
	}
	
	
	

}
