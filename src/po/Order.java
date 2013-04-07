package po;

import java.sql.Date;
import java.sql.Timestamp;

public class Order {
	
	private int id;
	private String status;
	private int sku;
	private int quantity;
	private Timestamp placeOnDate;
	private long transactionId;
	private float amount;
	private int shippingAddress;
	private int customerId;
	private int employeeId;
	
	public Order(int id2, String status2, Timestamp date, long tid,
			int ship, int customer, int employee, int qu,
			int sku2,float amount2) {
		id=id2;
		status=status2;
		this.placeOnDate=date;
		this.transactionId=tid;
		amount=amount2;
		this.shippingAddress=ship;
		this.customerId=customer;
		this.employeeId=employee;
		quantity=qu;
		sku=sku2;
		// TODO Auto-generated constructor stub
	}

	public Order(int uid, int booksku, int quantity2, String status2, Timestamp time,float amount) {
		// TODO Auto-generated constructor stub
	    this.customerId=uid;
	    this.sku=booksku;
	    this.quantity=quantity2;
	    this.status=status2;
	    this.placeOnDate=time;
	    this.amount=amount;
	}

	public Order() {
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Timestamp getPlaceOnDate() {
		return placeOnDate;
	}

	public void setPlaceOnDate(Timestamp placeOnDate) {
		this.placeOnDate = placeOnDate;
	}

	public long getTransactionId() {
		return transactionId;
	}

	public void setTransactionId(long transactionId) {
		this.transactionId = transactionId;
	}

	public float getAmount() {
		return amount;
	}

	public void setAmount(float amount) {
		this.amount = amount;
	}

	public int getShippingAddress() {
		return shippingAddress;
	}

	public void setShippingAddress(int shippingAddress) {
		this.shippingAddress = shippingAddress;
	}

	public int getCustomerId() {
		return customerId;
	}

	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}

	public int getEmployeeId() {
		return employeeId;
	}

	public void setEmployeeId(int employeeId) {
		this.employeeId = employeeId;
	}

	public int getSku() {
		return sku;
	}

	public void setSku(int sku) {
		this.sku = sku;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	
}
	
