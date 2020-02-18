package gr.hua.dit.springmvc1;

import javax.servlet.http.HttpServletRequest;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import gr.hua.dit.springmvc1.entity.User;

@Controller
public class HomeController {
	
	
	@RequestMapping("/")
	public String showfirstpage() {
	        return "main-menu";
	}

	@RequestMapping("/geography")
	public String geoHome() {
		return "geoHome";
	}

	@RequestMapping("/diet")
	public String dietHome() {
		return "dietHome";
	}

	@RequestMapping("/econ")
	public String econHome() {
		return "econHome";
	}

	@RequestMapping("/it")
	public String itHome() {
		return "itHome";
	}
	
	@RequestMapping("/pgeography")
	public String mgeoHome() {
		return "pgeoHome";
	}

	@RequestMapping("/pdiet")
	public String mdietHome() {
		return "pdietHome";
	}

	@RequestMapping("/pecon")
	public String meconHome() {
		return "pEconHome";
	}

	@RequestMapping("/pit")
	public String pitHome() {
		return "pitHome";
	}
	
	@RequestMapping("/success2")
	public String success() {
		return "success2";
	}
	
	@RequestMapping("/about")
	public String abiut() {
		return "about";
	}
	


}
