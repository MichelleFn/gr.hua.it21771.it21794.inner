package gr.hua.dit.springmvc1.dao;

import java.util.List;


import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import gr.hua.dit.springmvc1.entity.*;

@Repository
public class DAOThesisImpl implements DAOThesis {

	@Autowired
	SessionFactory sessionFactory;

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

}
