package com.ua.committee.controller;

import java.lang.reflect.Field;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ua.committee.domain.Certificate;
import com.ua.committee.domain.FacultyRegistration;
import com.ua.committee.domain.User;
import com.ua.committee.service.FacultyRegistrationService;
import com.ua.committee.service.UserService;

@Controller
public class FacultyRegistrationController {

	@Autowired
	private FacultyRegistrationService facultyRegistrationService;

	@Autowired
	private UserService userService;

	@GetMapping("/registrations")
	public ModelAndView registration(Model model) {
		ModelAndView map = new ModelAndView("registrations");
		map.addObject("registrations", facultyRegistrationService.findAll());

		return map;
	}

	@GetMapping("/registrations-details/{id}")
	public String registrationDetails(@PathVariable(value = "id") Integer id, Model model)
			throws NoSuchFieldException, SecurityException, IllegalArgumentException, IllegalAccessException {
		FacultyRegistration facultyRegistration = facultyRegistrationService.findById(id);
		Certificate certificate = facultyRegistration.getUser().getCertificate();

		Field first = Certificate.class
				.getDeclaredField(facultyRegistration.getFaculty().getFirstSubject().toLowerCase());
		Field second = Certificate.class
				.getDeclaredField(facultyRegistration.getFaculty().getSecondSubject().toLowerCase());
		Field third = Certificate.class
				.getDeclaredField(facultyRegistration.getFaculty().getThirdSubject().toLowerCase());
		
		first.setAccessible(true);
		second.setAccessible(true);
		third.setAccessible(true);
		
		int firstSubject = (int) first.get(certificate);
		int secondSubject = (int) second.get(certificate);
		int thirdSubject = (int) third.get(certificate);

		int userMark = (firstSubject + secondSubject + thirdSubject) / 3;

		model.addAttribute("userMark", userMark);
		model.addAttribute("registration", facultyRegistration);

		return "registrations-details";
	}

	@PostMapping("/registrations/{id}/delete")
	public String deleteRegistration(@PathVariable(value = "id") Integer id, Model model) {
		facultyRegistrationService.delete(facultyRegistrationService.findById(id));
		return "redirect:/registrations";
	}

	@PostMapping("/registrations/{id}/apply")
	public String applyAndDeleteRegistration(@PathVariable(value = "id") Integer id, Model model) {

		FacultyRegistration fr = facultyRegistrationService.findById(id);

		User user = fr.getUser();

		user.setFaculty(fr.getFaculty());
		userService.update(user);

		facultyRegistrationService.delete(fr);

		return "redirect:/registrations";
	}
}
