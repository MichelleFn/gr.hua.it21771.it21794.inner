package gr.hua.dit.springmvc1.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import gr.hua.dit.springmvc1.dao.*;
import gr.hua.dit.springmvc1.entity.User;
import gr.hua.dit.springmvc1.service.UserService;

@Controller
public class AdminController {

	
	@Autowired
	DAOUser  daouser;
	
	@Autowired
	UserService userserv;
	
	@RequestMapping(value  = "/enable" , method = RequestMethod.GET)
	public String enableFirst() {
		return "admin";
	}
	
	@RequestMapping(value  = "/enableUser" , method = RequestMethod.GET)
	public String enable() {
		return "admin";
	}
	@RequestMapping(value = "/enableUser" , method = RequestMethod.POST)
	public String enableStudent() {
		userserv.EnableService();
		return "success";
	}
	
	
	

	
}
