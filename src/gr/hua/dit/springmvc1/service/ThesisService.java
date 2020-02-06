package gr.hua.dit.springmvc1.service;

import java.util.List;

import gr.hua.dit.springmvc1.entity.*;

public interface ThesisService {

	public List<Thesis> GetListOfThesis();
	
	public void SaveThesis(Thesis thesis);
	
	public void SaveStudentThesis(Thesis thesis);
}