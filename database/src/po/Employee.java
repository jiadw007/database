package po;

public class Employee {
	
	private int ID;
	private String loginname;
	private String firstname;
	private String lastname;
	private String password;
	private String passwordsalt;
	private int ismanager;
	
	public Employee(){
		
	}
	
	public Employee(int ID,String loginname,String firstname,String lastname,String password,String passwordsalt,int ismanager){
		this.ID=ID;
		this.loginname=loginname;
		this.firstname=firstname;
		this.lastname=lastname;
		this.password=password;
		this.passwordsalt=passwordsalt;
		this.ismanager=ismanager;
	}
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public String getLoginname() {
		return loginname;
	}
	public void setLoginname(String loginname) {
		this.loginname = loginname;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPasswordsalt() {
		return passwordsalt;
	}
	public void setPasswordsalt(String passwordsalt) {
		this.passwordsalt = passwordsalt;
	}
	public int getIsmanager() {
		return ismanager;
	}
	public void setIsmanager(int ismanager) {
		this.ismanager = ismanager;
	}
	
	

}
