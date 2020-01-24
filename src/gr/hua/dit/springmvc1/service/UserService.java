package gr.hua.dit.springmvc1.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import gr.hua.dit.springmvc1.entity.*;


public interface UserService {

	public List<User> getListOfUsersService();
	
	public User getUserService(String username);
	
	public void SaveUserDetailsService(User user);
	
	public void UpdateUserService(User user);
	
	public void DeleteUserDetailsService(String username);
	
	public void InsertSupportedServices();
	
	public void DeleteSupportedServices();
	
	public void EnableService();

	
	
}
