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

import com.divergentsl.springboot.entity.Labtest;
import com.divergentsl.springboot.service.LabTestService;

@Controller
@RequestMapping("/AddLabtest")
public class LabTestController {
	@Autowired
	private LabTestService labTestService;

	@GetMapping
	ModelAndView showLabtest() {
		List<Labtest> list = labTestService.read();
		ModelAndView view = new ModelAndView("Labtest");
		view.addObject("labtestlist", list);
		return view;
	}

	@PostMapping
	public String createLabtest(HttpServletRequest request, HttpServletResponse response) {
		String name = request.getParameter("name");
		long price = Long.parseLong(request.getParameter("price"));
		Labtest labtest = new Labtest(name, price);
		labTestService.create(labtest);
		return "redirect:/AddLabtest";
	}

	@GetMapping("/remove")
	protected String deletePatient(HttpServletRequest request, HttpServletResponse response) {
		int deletid = Integer.parseInt(request.getParameter("labtestId"));
		if (labTestService.delete(deletid)) {
			return "redirect:/AddLabtest";
		}
		return null;
	}

}