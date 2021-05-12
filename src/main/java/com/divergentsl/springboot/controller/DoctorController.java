package com.divergentsl.springboot.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.divergentsl.springboot.entity.Doctor;
import com.divergentsl.springboot.service.DoctorService;

@Controller
@RequestMapping("/AddDoctor")
public class DoctorController {
	@Autowired
	private DoctorService doctorService;

	@GetMapping
	public ModelAndView showDoctor() {
		List<Doctor> list = doctorService.read();
		ModelAndView view = new ModelAndView("Doctor");
		view.addObject("doctorList", list);
		return view;
	}

	@PostMapping
	public String createDoctor(HttpServletRequest request, HttpServletResponse response) {
		String doctorName = request.getParameter("doctorName");
		String doctorUserName = request.getParameter("doctorUserName");
		String password = request.getParameter("doctorPassword");
		String doctorContact = request.getParameter("doctorContact");
		String doctorSpeciality = request.getParameter("doctorSpeciality");
		int doctorFees = Integer.parseInt(request.getParameter("doctorFees"));
		Doctor doctor = new Doctor(doctorUserName, password, doctorName, doctorContact, doctorSpeciality, doctorFees);
		doctorService.create(doctor);
		return "redirect:/AddDoctor";
	}

	@GetMapping("/remove")
	protected String deleteDoctor(HttpServletRequest request, HttpServletResponse response) {
		int deletid = Integer.parseInt(request.getParameter("doctorId"));
		if (doctorService.delete(deletid)) {
			return "redirect:/AddDoctor";
		}
		return null;
	}
}
