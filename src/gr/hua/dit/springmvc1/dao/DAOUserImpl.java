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
		//getting user by username
		Session session = sessionFactory.getCurrentSession();
		User user = (User) session.get(User.class, username);
		return user;
	}

	@Override
	public void SaveUserDetails(User user) {

		Session currentSession = sessionFactory.getCurrentSession();

		user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
		user.getAuthorities();
		/*
		 when getting the form attributes, direction and program are null
		 if the student is an undergraduate. So in order to use the enable method
		 we had to set an empty string to these attributes to avoid nullPointerException
		*/
		try {
			if (user.getDirection() == null && user.getProgram() == null) {
				user.setDirection("");
				user.setProgram("");
			}
		} catch (Exception e) {
			System.out.println("ERROR");
		}
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

	@Override
	//we didn't implememt this method
	public void InsertSupportedServices() {
		// TODO Auto-generated method stub

	}

	@Override
	//we didn't implememt this method
	public void DeleteSupportedServices() {
		// TODO Auto-generated method stub

	}

	@Override
	public void Enable() {
		List<User> Users = getListOfUsers();
		System.out.println(Users);
		for (User user : Users) {
			try {
				/*
				 in our implementation, if a student is an undergraduate, direction and program fields are empty.
				 So we use these 2 fields to distinguish between postgraduate and undergraduate students
				 */
				//this is for the undergraduate
				if (user.getDirection().equals("") && user.getProgram().equals("") && user.getEnabled() == false) {
					if (user.getCurrentSemester() >= 7 && user.getFailedClasses() <= 3) {
						user.setEnabled(true);
						UpdateUser(user);
					}
				}
			} catch (Exception e) {
				System.out.println("An Exception Occured");
			}

			try {
				//this is for the postgraduate
				if (user.getDirection().isEmpty() != true && user.getDirection().isEmpty() != true
						&& user.getEnabled() == false) {
					if (user.getCurrentSemester() >= 3 && user.getFailedClasses() <= 1) {
						user.setEnabled(true);
						UpdateUser(user);
					}
				}
			} catch (Exception e) {
				System.out.println("An exception");
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
		session.update(user);

	}

}