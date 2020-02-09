package gr.hua.dit.springmvc1.controller;

import java.util.HashSet;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;

import gr.hua.dit.springmvc1.dao.*;
import gr.hua.dit.springmvc1.entity.*;
import gr.hua.dit.springmvc1.service.*;

@Controller
public class UserCatalogueController {

	@Autowired
	DAOUser daouser;
	@Autowired
	UserService daouserservice;

	@Autowired
	DAOAuthorities daoauth;

	@Autowired
	AuthoritiesService authservice;


	@RequestMapping(value = "/addStudent", method = RequestMethod.GET) // loads page for entering user details
	public String setupFormSDetails(Model model) {
		User user = new User();
		model.addAttribute("user", user);
		return "UCStudentDetails";
	}

	@RequestMapping(value = "/addStudent", method = RequestMethod.POST) // adds student and loads the page again for a
																		// new student to be added
	public String submitFormSDetails(@ModelAttribute("user") User user, BindingResult result) {
		daouserservice.SaveUserDetailsService(user);
		return "redirect:/addStudent";
	}

//	@RequestMapping(value = "/addRole", method = RequestMethod.GET) // loads page to add role
//	public String setupFormIsertRole(Model model) {
//		Authorities authority = new Authorities();
//		model.addAttribute("authorities", authority);
//		return "UCInsertRole";
//	}
//
//	@RequestMapping(value = "/addRole", method = RequestMethod.POST) // adds role and loads page again
//	public String submitFormInsertRole(@ModelAttribute("Authorities") Authorities authority, BindingResult result
//			) {
//
//		authservice.InsertRole(User);
//		return "redirect:/addRole";
//	}

	@RequestMapping(value = "/deleteRole", method = RequestMethod.GET) // loads delete form
	public String setupDeleteForm(Model model) {
		Authorities authority = new Authorities();
		model.addAttribute("authorities", authority);
		return "UCDeleteRole";
	}

	@RequestMapping(value = "/deleteRole", method = RequestMethod.POST) // deletes role
	public String submitFormDeleteRole(@ModelAttribute("Authorities") Authorities authority, BindingResult result,
			SessionStatus status) {
		status.setComplete();
		authservice.DeleteRole(authority);
		return "redirect:/addRole";
	}

	@RequestMapping(value = "/updateStudent", method = RequestMethod.GET) // loads update page
	public String setupFormSDetailsUpdate(Model model) {
		User user = new User();
		model.addAttribute("user", user);
		return "UCUpdateStudent";
	}

	@RequestMapping(value = "/updateStudent", method = RequestMethod.POST) // updates student
	public String submitFormSDetailsUpdate(@ModelAttribute("user") User user, BindingResult result,
			SessionStatus status) {

		// Mark Session Complete
		status.setComplete();
		daouserservice.UpdateUserService(user);
		return "redirect:/updateStudent";
	}

	@RequestMapping(value = "/deleteStudent", method = RequestMethod.GET) // loads delete student form
	public String setupFormSDetailsDelete(Model model) {
		User user = new User();
		model.addAttribute("user", user);
		return "UCDeleteStudent";
	}

	@RequestMapping(value = "/deleteStudent", method = RequestMethod.POST) // deletes student
	public String submitFormSDetailsDelete(@ModelAttribute("user") User user, BindingResult result,
			SessionStatus status) {

		// Mark Session Complete
		status.setComplete();
		daouserservice.DeleteUserDetailsService(user.getUsername());
		return "redirect:/deleteStudent";
	}

}