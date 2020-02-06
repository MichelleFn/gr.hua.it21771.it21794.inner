package gr.hua.dit.springmvc1.service;

import java.util.List;

import javax.transaction.Transactional;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import gr.hua.dit.springmvc1.entity.*;
import gr.hua.dit.springmvc1.dao.*;

@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	DAOUser DAOuser;
	


	@Transactional
	@Override
	public List<User> getListOfUsersService() {
		return DAOuser.getListOfUsers();
	}

	@Transactional
	@Override
	public User getUserService(String username) {
		
		return DAOuser.getUser(username);
	}

	@Transactional
	@Override
	public void SaveUserDetailsService(User user) {
		DAOuser.SaveUserDetails(user);
		
	}

	@Transactional
	@Override
	public void UpdateUserService(User user) {
		DAOuser.UpdateUser(user);
		
	}

	@Transactional
	@Override
	public void DeleteUserDetailsService(String username) {
		DAOuser.DeleteUserDetails(username);
		
	}

	@Transactional
	@Override
	public void InsertSupportedServices() {
		// TODO Auto-generated method stub
		
	}

	@Transactional
	@Override
	public void DeleteSupportedServices() {
		// TODO Auto-generated method stub
		
	}

	@Transactional
	@Override
	public void EnableService() {
		DAOuser.Enable();
		
	}
	
	
	
	


}
