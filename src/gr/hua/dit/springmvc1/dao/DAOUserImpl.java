package gr.hua.dit.springmvc1.dao;

import java.sql.SQLIntegrityConstraintViolationException;
import java.util.List;



import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ImportResource;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Repository;

import gr.hua.dit.springmvc1.entity.*;

@Repository
public class DAOUserImpl implements DAOUser {

	@Autowired
	private SessionFactory sessionFactory;

	@Autowired
	PasswordEncoder bCryptPasswordEncoder;
	
	@Autowired
	DAOAuthorities daoauthorities;

	@Override
	public User getUser(String username) {
		Session session = sessionFactory.getCurrentSession();
		User user = (User) session.get(User.class, username);
		return user;
	}

	@Override
	public void SaveUserDetails(User user) {

		Session currentSession = sessionFactory.getCurrentSession();
		

		user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
		user.getAuthorities();
		currentSession.save(user);
		daoauthorities.InsertRole(user);
		


	}
	

	@Override
	public void DeleteUserDetails(String username) {

		Session currentSession = sessionFactory.getCurrentSession();
		User user = currentSession.get(User.class, username);
		System.out.println(user);
		try {
			currentSession.delete(user);
		} catch (Exception e) {

		}

	}
//	public void DeleteUserDetails(String username) {
//		//sessionFactory = new Configuration().configure().buildSessionFactory();
//		Session session = sessionFactory.openSession();
//		//session.beginTransaction();
//         
//		User user = getUser(username);
//		Authorities authority=new Authorities();
//		authority=session.get(Authorities.class,user.getUsername());
//		session.delete(authority);
//		session.delete(user);
//		//session.getTransaction().commit();
//		//session.close();
//
//	}

	@Override
	public void InsertSupportedServices() {
		// TODO Auto-generated method stub

	}

	@Override
	public void DeleteSupportedServices() {
		// TODO Auto-generated method stub

	}

	@Override
	public void Enable() {
		List<User> Users = getListOfUsers();
		for (User user : Users) {
			if (user.getDirection().equals("") && user.getProgram().equals("") && user.getEnabled() == false) {
				if (user.getCurrentSemester() >= 7 && user.getFailedClasses() <= 3) {
					user.setEnabled(true);
					UpdateUser(user);
				}
			}
			if (user.getDirection().isEmpty() != true && user.getDirection().isEmpty() != true
					&& user.getEnabled() == false) {
				if (user.getCurrentSemester() >= 3 && user.getFailedClasses() <= 1) {
					user.setEnabled(true);
					UpdateUser(user);
				}
			}
		}

	}

	@Override
	public List<User> getListOfUsers() {

		Session session = sessionFactory.getCurrentSession();

		Query<User> query = session.createQuery("from User", User.class);

		List<User> Users = query.getResultList();
		System.out.println(Users);
		return Users;
	}

	@Override
	public void UpdateUser(User user) {

		Session session = sessionFactory.getCurrentSession();

//		if (user.getUsername().equals("")) {

//		} else {

		session.update(user);

//		}
		

	}


	@Override
	public List<User> getListOfStudentsForThesis(String sub) {

		Session session = sessionFactory.getCurrentSession();

		Query<User> query = session.createQuery("from User u where u.subject LIKE '%sub%'", User.class);

		List<User> Users = query.getResultList();
		System.out.println(Users);
		return Users;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}