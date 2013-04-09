package po;

public class timeSeries {
	
	public timeSeries(int year, int month, int sum) {
		// TODO Auto-generated constructor stub
		this.year=year;
		this.month=month;
		this.sum=sum;
	}
    
	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public int getMonth() {
		return month;
	}

	public void setMonth(int month) {
		this.month = month;
	}

	public int getSum() {
		return sum;
	}

	public void setSum(int sum) {
		this.sum = sum;
	}

	private int year;
	
	private int month;
	
	private int sum;

}
