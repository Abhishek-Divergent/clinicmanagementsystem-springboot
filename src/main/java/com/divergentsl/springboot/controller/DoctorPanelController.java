package com.divergentsl.springboot.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.divergentsl.springboot.entity.Appointment;
import com.divergentsl.springboot.service.AppointmentService;

@Controller
public class DoctorPanelController {

	@Autowired
	AppointmentService service;

	@PostMapping("/patientdoctor")
	ModelAndView show(HttpServletRequest request, HttpServletResponse response) {
		long id = Long.parseLong(request.getParameter("findid"));
		List<Appointment> list = service.read();
		List<Appointment> list1= new ArrayList<Appointment>();
		for (Appointment appointment : list) {
			if (id == appointment.getDoctor_id()) {
				list1.add(appointment);
			}
		}
		ModelAndView view = new ModelAndView("DoctorPanel");
		view.addObject("appointmentList",list1);
		return view;
	}
}
