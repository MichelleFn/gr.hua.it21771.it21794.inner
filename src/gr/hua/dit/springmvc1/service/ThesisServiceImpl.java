package gr.hua.dit.springmvc1.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import gr.hua.dit.springmvc1.dao.*;
import gr.hua.dit.springmvc1.entity.*;

@Service
public class ThesisServiceImpl implements ThesisService{

	@Autowired
	DAOThesis dao;
	
	
	@Transactional
	@Override
	public List<Thesis> GetListOfThesis() {
		return dao.GetListOfThesis();
	}

	@Transactional
	@Override
	public void SaveThesis(Thesis thesis) {
		dao.SaveThesis(thesis);
		
	}

}
