package com.ua.committee.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ua.committee.domain.Faculty;
import com.ua.committee.domain.FacultyRegistration;
import com.ua.committee.domain.User;
import com.ua.committee.service.FacultyRegistrationService;
import com.ua.committee.service.FacultyService;
import com.ua.committee.service.UserService;

@Controller
public class FacultyController {

	@Autowired
	private FacultyService facultyService;

	@Autowired
	private FacultyRegistrationService facultyRegistrationService;

	@Autowired
	private UserService userService;

	@RequestMapping(value = "/createFaculty", method = RequestMethod.GET)
	public String createFaculty(Model model) {
		model.addAttribute("facultyForm", new Faculty());
		return "createFaculty";
	}

	@RequestMapping(value = "/createFaculty", method = RequestMethod.POST)
	public String createFaculty(@ModelAttribute("facultyForm") Faculty fadultyForm) {
		facultyService.save(fadultyForm);
		return "createFaculty";
	}

	@GetMapping("/faculties")
	public ModelAndView faculties() {
		ModelAndView map = new ModelAndView("faculties");
		map.addObject("faculties", facultyService.getAll());
		return map;
	}

	@GetMapping("faculties/{id}")
	public String facultyDetails(@PathVariable(value = "id") Integer id, Model model) {
		Faculty faculty = facultyService.findById(id);

		model.addAttribute("faculty", faculty);
		return "faculties-details";
	}

	@PostMapping("faculties/{id}")
	public String facultyRegistration(@ModelAttribute("faculty") Faculty faculty) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String userEmail = auth.getName();
		User user = userService.findByEmail(userEmail);

		facultyRegistrationService.save(new FacultyRegistration(user, faculty));
		return "redirect:/faculties";
	}
}
