package gr.hua.dit.springmvc1.rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import gr.hua.dit.springmvc1.service.*;
import gr.hua.dit.springmvc1.dao.DAOThesis;
import gr.hua.dit.springmvc1.entity.*;

@RestController
@RequestMapping("/api")
@CrossOrigin(origins = "http://localhost:8080")
public class StudentRestController {

	@Autowired
	UserService userser;

	@Autowired
	DAOThesis daothesis;

	@Autowired
	ThesisService thesisserv;

	@GetMapping("/users")
	public List<User> StudentList() {
		return userser.getListOfUsersService();

	}

	@PostMapping(value = "/thesis", consumes = "application/json", produces = "application/json")
	public void createPerson(@RequestBody Thesis thesis) {
		thesis.setId("0");
		thesisserv.SaveThesis(thesis);
	}

}
