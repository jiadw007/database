package dao;

import po.Address;
import po.User;


public interface IUserDao {
	
	public abstract User getUserByUsername(String userName);
	
	public abstract boolean insertUser(User user);
	
	public abstract boolean insertAddress(Address address);
	

}
