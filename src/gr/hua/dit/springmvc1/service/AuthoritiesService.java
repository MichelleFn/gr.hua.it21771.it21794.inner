package gr.hua.dit.springmvc1.service;

import gr.hua.dit.springmvc1.entity.*;

public interface AuthoritiesService {

	public void InsertRole(User user,String authority);

	public void DeleteRole(Authorities authority);

}
