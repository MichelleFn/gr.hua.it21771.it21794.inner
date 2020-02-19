package gr.hua.dit.springmvc1.dao;
import java.util.List;

import gr.hua.dit.springmvc1.entity.*;

public interface DAOThesis {
	
	//for 
	public List<Thesis> GetListOfThesis();

	//for rest
	public void SaveThesis(Thesis thesis);
	
	//for internal system
	public void SaveStudentThesis(Thesis thesis);
}