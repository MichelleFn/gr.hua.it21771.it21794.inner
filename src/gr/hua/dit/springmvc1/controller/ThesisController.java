package gr.hua.dit.springmvc1.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import gr.hua.dit.springmvc1.dao.DAOAuthorities;
import gr.hua.dit.springmvc1.dao.DAOThesis;
import gr.hua.dit.springmvc1.dao.DAOUser;
import gr.hua.dit.springmvc1.entity.Thesis;
import gr.hua.dit.springmvc1.entity.User;
import gr.hua.dit.springmvc1.service.ThesisService;
import gr.hua.dit.springmvc1.service.UserService;

@Controller
public class ThesisController {
	@Autowired
	DAOThesis daothesis;
	@Autowired
	ThesisService thesisService;

	

	@RequestMapping(value = "/geoHome", method = RequestMethod.GET) 
	public String geoThesis(Model model) {
		Thesis thesis = new Thesis();
		model.addAttribute("thesis",thesis);
		return "geoHome";
	}

	@RequestMapping(value = "/geoHome", method = RequestMethod.POST) 
	public String geoThesis(@ModelAttribute("thesis") Thesis thesis, BindingResult result) {
		thesisService.SaveStudentThesis(thesis);
		return "redirect:/";
	}
	
	@RequestMapping(value = "/dietHome", method = RequestMethod.GET) 
	public String dietThesis(Model model) {
		Thesis thesis = new Thesis();
		model.addAttribute("thesis",thesis);
		return "dietHome";
	}

	@RequestMapping(value = "/dietHome", method = RequestMethod.POST) 
	public String dietThesis(@ModelAttribute("thesis") Thesis thesis, BindingResult result) {
		thesisService.SaveStudentThesis(thesis);
		return "redirect:/";
	}
	
	@RequestMapping(value = "/econHome", method = RequestMethod.GET) 
	public String econThesis(Model model) {
		Thesis thesis = new Thesis();
		model.addAttribute("thesis",thesis);
		return "econHome";
	}

	@RequestMapping(value = "/econHome", method = RequestMethod.POST) 
	public String econThesis(@ModelAttribute("thesis") Thesis thesis, BindingResult result) {
		thesisService.SaveStudentThesis(thesis);
		return "redirect:/";
	}
	
	@RequestMapping(value = "/itHome", method = RequestMethod.GET) 
	public String itThesis(Model model) {
		Thesis thesis = new Thesis();
		model.addAttribute("thesis",thesis);
		return "itHome";
	}

	@RequestMapping(value = "/itHome", method = RequestMethod.POST) 
	public String itThesis(@ModelAttribute("thesis") Thesis thesis, BindingResult result) {
		thesisService.SaveStudentThesis(thesis);
		return "redirect:/";
	}
}