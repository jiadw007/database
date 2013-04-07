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
	private int sum;
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
	
	public User(String username2, String password2, String ps, String email2) {
		// TODO Auto-generated constructor stub
		this.username=username2;
		this.password=password2;
		this.passwordSalt=ps;
		this.email=email2;
	}
	public User(int id2, String username2, int sum2) {
		// TODO Auto-generated constructor stub
		this.ID=id2;
		this.username=username2;
		this.sum=sum2;
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
	public int getSum() {
		return sum;
	}
	public void setSum(int sum) {
		this.sum = sum;
	}

}
