package com.divergentsl.springboot.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.divergentsl.springboot.entity.Admin;
import com.divergentsl.springboot.entity.Doctor;
import com.divergentsl.springboot.service.LoginService;

@Controller
public class LoginController {
	private static final long serialVersionUID = 1L;
	@Autowired
	private LoginService loginService;

	@PostMapping("/adminLogin")
	public ModelAndView adminLogin(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Admin> list = loginService.adminRead();
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		for (Admin admin : list) {
			if (username.equals(admin.getUsername()) && password.equals(admin.getPassword())) {
				ModelAndView view = new ModelAndView("AdminPanel");
				return view;
			}
		}
		return null;
	}

	@GetMapping("/adminLogin")
	String showAdmin() {
		return "AdminLogin";
	}

	@PostMapping("/doctorLogin")
	public ModelAndView doctorLogin(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Doctor> list = loginService.doctorRead();
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		for (Doctor doctor : list) {
			if (username.equals(doctor.getUsername()) && password.equals(doctor.getPassword())) {
				ModelAndView view = new ModelAndView("DoctorPanel");
				return view;
			}
		}
		return null;
	}

	@GetMapping("/doctorLogin")
	String showDoctor() {
		return "DoctorLogin";
	}

}
