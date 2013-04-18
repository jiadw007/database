package po;

import java.sql.Date;

public class Credit {
	
	private long cardNumber;
	
	private String nameOnCard;
	
	private int caredCVV2;
	
	private Date experionDate; 
	
	private String cardType;
	
	private int billing_addr;
	
	private String lastname;

	/** firstname property */
	private String firstname;
    
    private String state;
	
	private String city;
	
	private String company;
	
	private int zipcode;
	
	private String phonenumber;
	
	private String addressline1;
	
	private String addressline2;

	public long getCardNumber() {
		return cardNumber;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getFirstname() {
		return firstname;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
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

	public String getPhonenumber() {
		return phonenumber;
	}

	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
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

	public void setCardNumber(long cardNumber) {
		this.cardNumber = cardNumber;
	}

	public String getNameOnCard() {
		return nameOnCard;
	}

	public void setNameOnCard(String nameOnCard) {
		this.nameOnCard = nameOnCard;
	}

	public int getCaredCVV2() {
		return caredCVV2;
	}

	public void setCaredCVV2(int caredCVV2) {
		this.caredCVV2 = caredCVV2;
	}

	public Date getExperionDate() {
		return experionDate;
	}

	public void setExperionDate(Date experionDate) {
		this.experionDate = experionDate;
	}

	public String getCardType() {
		return cardType;
	}

	public void setCardType(String cardType) {
		this.cardType = cardType;
	}

	public int getBilling_addr() {
		return billing_addr;
	}

	public void setBilling_addr(int billing_addr) {
		this.billing_addr = billing_addr;
	}

	public Credit(long cardNumber, String nameOnCard,
			Date experionDate, String cardType, int billing_addr,
			String lastname, String firstname, String state, String city,
			String company, int zipcode, String phonenumber,
			String addressline1, String addressline2) {
		super();
		this.cardNumber = cardNumber;
		this.nameOnCard = nameOnCard;
		
		this.experionDate = experionDate;
		this.cardType = cardType;
		this.billing_addr = billing_addr;
		this.lastname = lastname;
		this.firstname = firstname;
		this.state = state;
		this.city = city;
		this.company = company;
		this.zipcode = zipcode;
		this.phonenumber = phonenumber;
		this.addressline1 = addressline1;
		this.addressline2 = addressline2;
	}

	public Credit() {
		// TODO Auto-generated constructor stub
	}

	public Credit(long cardNumber, String nameOnCard, Date experionDate,int cvv2,
			String cardType, String lastname, String firstname, String state,
			String city, String company, int zipcode, String phonenumber,
			String addressline1, String addressline2) {
		super();
		this.caredCVV2=cvv2;
		this.cardNumber = cardNumber;
		this.nameOnCard = nameOnCard;
		this.experionDate = experionDate;
		this.cardType = cardType;
		this.lastname = lastname;
		this.firstname = firstname;
		this.state = state;
		this.city = city;
		this.company = company;
		this.zipcode = zipcode;
		this.phonenumber = phonenumber;
		this.addressline1 = addressline1;
		this.addressline2 = addressline2;
	}
	public Credit(long cardNumber, String nameOnCard, Date experionDate,
			String cardType, String lastname, String firstname, String state,
			String city, String company, int zipcode, String phonenumber,
			String addressline1, String addressline2) {
		super();
		this.cardNumber = cardNumber;
		this.nameOnCard = nameOnCard;
		this.experionDate = experionDate;
		this.cardType = cardType;
		this.lastname = lastname;
		this.firstname = firstname;
		this.state = state;
		this.city = city;
		this.company = company;
		this.zipcode = zipcode;
		this.phonenumber = phonenumber;
		this.addressline1 = addressline1;
		this.addressline2 = addressline2;
	}

	
	
	

}
