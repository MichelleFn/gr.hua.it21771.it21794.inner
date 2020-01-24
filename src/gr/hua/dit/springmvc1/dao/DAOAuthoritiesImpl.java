package gr.hua.dit.springmvc1.dao;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import gr.hua.dit.springmvc1.entity.*;
import gr.hua.dit.springmvc1.dao.*;

@Repository
public class DAOAuthoritiesImpl implements DAOAuthorities {
	
	@Autowired
	private SessionFactory sessionFactory;
	
//	@Override
//	public void InsertRole(Authorities authority) {
//
//		Session session = sessionFactory.getCurrentSession();
//		DAOUserImpl daoUser = new DAOUserImpl();
//		User user =daoUser.getUser(authority.getUser().getUsername());
//		authority.setUser(user);
//		
//		try {
//		if(user.equals(null)) {
//			System.out.println("User"+authority.getUser().getUsername()+"doesn't exist");
//		}else {
//			session.save(authority);
//		}
//		}catch(NullPointerException ne) {
//			System.out.println("User deosnt exists");
//		}
//		
//
//	}
	
	@Override
	public void InsertRole(User user, String authority) {

		Session session = sessionFactory.getCurrentSession();
		Authorities auth = new Authorities();
		auth.setUser(user);
		auth.setAuthority(authority);
		
		session.save(auth);
		

	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

	@Override
	public void DeleteRole(Authorities authority) {

//		sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.getCurrentSession();
//		session.delete(authority);
		session.beginTransaction();
		
		DAOUserImpl daoUser = new DAOUserImpl();
		User user =daoUser.getUser(authority.getUser().getUsername());
	
		//System.out.println(user);
		try {
		if(user.equals(null)) {
			System.out.println("User"+authority.getUser().getUsername()+"doesn't exist");
		}else {
			session.delete(authority);
//			session.getTransaction().commit();
//			session.close();
		}
		}catch(NullPointerException ne) {
			System.out.println("User deosnt exists");
		}

	}

}
