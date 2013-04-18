package po;

public class dbStatus {

	private String tableName;
	private int count;
	
	public dbStatus(String tableName, int count)
	{
		this.tableName = tableName;
		this.count = count;
	}
	
	public String getTableName(){
		return this.tableName;
	}
	
	public int getCount()
	{
		return this.count;
	}
	
	
}
