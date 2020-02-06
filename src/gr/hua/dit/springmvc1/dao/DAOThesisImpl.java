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

		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if (principal instanceof UserDetails) {
			String username = ((UserDetails) principal).getUsername();
			User user = DAOUser.getUser(username);
			if (user.getEnabled() == false) {
				System.out.println("You are not enabled to choose a thesis yet");

			} else {
				user.setThesisName(thesis.getSubject());
				DAOUser.UpdateUser(user);
			}

		} else {
			String username = principal.toString();
		}

	}

}