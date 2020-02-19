package gr.hua.dit.springmvc1.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Repository;

import gr.hua.dit.springmvc1.entity.*;

@Repository
public class DAOThesisImpl implements DAOThesis {

	@Autowired
	SessionFactory sessionFactory;

	@Autowired
	DAOUser DAOUser;

	@Override
	public List<Thesis> GetListOfThesis() {
		

		Session currentSession = sessionFactory.getCurrentSession();
		Query<Thesis> query = currentSession.createQuery("from Thesis", Thesis.class);
		List<Thesis> thesis = query.getResultList();

		return thesis;
	}

	@Override
	public void SaveThesis(Thesis thesis) {

		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.save(thesis);

	}

	@Override
	public void SaveStudentThesis(Thesis thesis) {
		Session currentSession = sessionFactory.getCurrentSession();
		//get the id of the user that is logged in
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if (principal instanceof UserDetails) {
			
			//get the user name of the logged in user
			String username = ((UserDetails) principal).getUsername();
			//getting the whole user object from database using username
			User user = DAOUser.getUser(username);
			if (user.getEnabled() == false) {
				System.out.println("You are not enabled to choose a thesis yet");

			} else {
				//adding new thesis field to current user
				user.setThesisName(thesis.getSubject());
				//updating the user
				DAOUser.UpdateUser(user);
			}

		} else {
			String username = principal.toString();
		}

	}

}