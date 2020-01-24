package gr.hua.dit.springmvc1.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import gr.hua.dit.springmvc1.dao.*;
import gr.hua.dit.springmvc1.entity.*;

@Service
public class AuthoritiesServiceImpl implements AuthoritiesService {

	
	@Autowired
	DAOAuthorities daoauth;
	
	
	@Transactional
	@Override
	public void InsertRole(User user, String authority) {
		daoauth.InsertRole(user,authority);

	}


	@Transactional
	@Override
	public void DeleteRole(Authorities authority) {
		daoauth.DeleteRole(authority);

	}

}
