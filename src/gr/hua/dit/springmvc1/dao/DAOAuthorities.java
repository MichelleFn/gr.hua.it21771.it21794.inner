package gr.hua.dit.springmvc1.dao;

import gr.hua.dit.springmvc1.entity.*;

public interface DAOAuthorities {

//	public void InsertRole(Authorities authority);
	
	public void InsertRole(User user, String authority);

	public void DeleteRole(Authorities authority);
}
