package gr.hua.dit.springmvc1.dao;
import java.util.List;

import gr.hua.dit.springmvc1.entity.*;

public interface DAOThesis {
	
	public List<Thesis> GetListOfThesis();

	public void SaveThesis(Thesis thesis);
	
	public void SaveStudentThesis(Thesis thesis);
}