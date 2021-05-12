package com.divergentsl.springboot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
   
	@RequestMapping("/")
	public String showHome() {
		return "index";
	}
	
	@RequestMapping("/adminpage")
	public String adminLogin() {
		return "AdminLogin";
	}
	
	@RequestMapping("/doctorpage")
	public String doctorLogin() {
		return "DoctorLogin";
	}
	

	
}
