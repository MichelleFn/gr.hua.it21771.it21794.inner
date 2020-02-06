package gr.hua.dit.springmvc1.dao;

import java.util.Iterator;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
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
	SessionFactory sessionFactory;
	@Autowired
	DAOUser DAOUser;

	@Override
	public void InsertRole(User user) {

		Session session = sessionFactory.getCurrentSession();
		Authorities authority = new Authorities();
		authority.setUser(user);
		authority.setAuthority(user.getRole());
		session.save(authority);

	}

	@Override
	public void DeleteRole(Authorities authority) {

		Session session = sessionFactory.getCurrentSession();


		DAOUserImpl daoUser = new DAOUserImpl();
		User user = daoUser.getUser(authority.getUser().getUsername());

		try {
			if (user.equals(null)) {
				System.out.println("User" + authority.getUser().getUsername() + "doesn't exist");
			} else {
				session.delete(authority);

			}
		} catch (NullPointerException ne) {
			System.out.println("User deosnt exists");
		}

	}

}