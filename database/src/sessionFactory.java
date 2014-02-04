
public class sessionFactory {
	
	public void connectDatabase(){
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");			
		}catch(java.lang.ClassNotFoundException e){
			System.out.println(e.getMessage());
		}
	}

}
