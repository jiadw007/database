package po;

import java.util.Date;



public class Address {
	
	private int ID;
	/** lastname property */
	private String lastname;

	/** firstname property */
	private String firstname;
    
    private String state;
	
	private String city;
	
	private int zipcode;
	
	private String company;
	
	private String phonenumber;
	
	private Date createon;
	
	private String addressline1;
	
	private String addressline2;

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public int getZipcode() {
		return zipcode;
	}

	public void setZipcode(int zipcode) {
		this.zipcode = zipcode;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}
    
	public String getPhonenumber() {
		return phonenumber;
	}

	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}

	public Date getCreateon() {
		return createon;
	}

	public void setCreateon(Date createon) {
		this.createon = createon;
	}

	public String getAddressline1() {
		return addressline1;
	}

	public void setAddressline1(String addressline1) {
		this.addressline1 = addressline1;
	}

	public String getAddressline2() {
		return addressline2;
	}

	public void setAddressline2(String addressline2) {
		this.addressline2 = addressline2;
	}

	public Address(){
		
	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public Address(int iD, String lastname, String firstname, String state,
			String city, int zipcode, String company, String phonenumber,
			Date createon, String addressline1, String addressline2) {
		super();
		ID = iD;
		this.lastname = lastname;
		this.firstname = firstname;
		this.state = state;
		this.city = city;
		this.zipcode = zipcode;
		this.company = company;
		this.phonenumber = phonenumber;
		this.createon = createon;
		this.addressline1 = addressline1;
		this.addressline2 = addressline2;
	}

	public Address(String lastname, String firstname, String state,
			String city, int zipcode, String company, String phonenumber,
			Date createon, String addressline1, String addressline2) {
		super();
		this.lastname = lastname;
		this.firstname = firstname;
		this.state = state;
		this.city = city;
		this.zipcode = zipcode;
		this.company = company;
		this.phonenumber = phonenumber;
		this.createon = createon;
		this.addressline1 = addressline1;
		this.addressline2 = addressline2;
	}
	
	

}
