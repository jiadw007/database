package po;

import java.sql.Timestamp;

public class User {
	
	private int ID;
	private String username;
	private String password;
	private String email;
	private Timestamp createTime;
	private String passwordSalt;
	private int defaultShippingAddress;
	private int defaultbillingAddress;
	
	public User( ){
		
	}
    public User(int ID,String username,String password,String passwordsalt,String email,Timestamp createtime,int defaultShippingAddress,int defaultbillingAddress){
		this.ID=ID;
		this.username=username;
		this.password=password;
		this.passwordSalt=passwordsalt;
		this.createTime=createtime;
		this.email=email;
		this.defaultbillingAddress=defaultbillingAddress;
		this.defaultShippingAddress=defaultShippingAddress;
	}
    public User(String username,String password,String passwordsalt,String email,Timestamp createtime){

		this.username=username;
		this.password=password;
		this.passwordSalt=passwordsalt;
		this.createTime=createtime;
		this.email=email;
	}
	
	public int getID() {
		return ID;
	}


	public void setID(int iD) {
		ID = iD;
	}


	public int getDefaultShippingAddress() {
		return defaultShippingAddress;
	}


	public void setDefaultShippingAddress(int defaultShippingAddress) {
		this.defaultShippingAddress = defaultShippingAddress;
	}


	public int getDefaultbillingAddress() {
		return defaultbillingAddress;
	}


	public void setDefaultbillingAddress(int defaultbillingAddress) {
		this.defaultbillingAddress = defaultbillingAddress;
	}


	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Timestamp getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Timestamp createTime) {
		this.createTime = createTime;
	}
	public String getPasswordSalt() {
		return passwordSalt;
	}
	public void setPasswordSalt(String passwordSalt) {
		this.passwordSalt = passwordSalt;
	}

}
