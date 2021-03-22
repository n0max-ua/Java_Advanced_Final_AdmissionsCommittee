package com.ua.committee.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ua.committee.domain.Faculty;
import com.ua.committee.service.FacultyService;

@Controller
public class FacultyController {

	@Autowired
	private FacultyService facultyService;
	
	@RequestMapping(value = "/createFaculty", method = RequestMethod.GET)
	public String createFaculty(Model model) {
		model.addAttribute("facultyForm", new Faculty());
		return "createFaculty";
	}
	
	@RequestMapping(value = "/createFaculty", method = RequestMethod.POST)
	public String createFaculty(@ModelAttribute("facultyForm") Faculty fadultyForm, Model model) {
		facultyService.save(fadultyForm);
		return "createFaculty";
	}
	
	@GetMapping("/faculties")
	public ModelAndView faculties() {
		ModelAndView map = new ModelAndView("faculties");
		map.addObject("faculties", facultyService.getAll());
		return map;
	}
	
}
