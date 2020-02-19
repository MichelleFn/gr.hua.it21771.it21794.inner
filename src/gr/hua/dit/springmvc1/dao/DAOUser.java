package gr.hua.dit.springmvc1.dao;

import java.util.ArrayList;
import java.util.List;

import gr.hua.dit.springmvc1.entity.User;


public interface DAOUser {
	
	public List<User> getListOfUsers();
	
	public User getUser(String username);
	
	public void SaveUserDetails(User user);
	
	public void UpdateUser(User user);
	
	public void DeleteUserDetails(String username);
	
	public void InsertSupportedServices();
	
	public void DeleteSupportedServices();
	
	public void Enable();
	

}
