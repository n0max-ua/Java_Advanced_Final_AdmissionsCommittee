package com.ua.committee.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ua.committee.domain.Certificate;
import com.ua.committee.domain.User;
import com.ua.committee.domain.UserRole;
import com.ua.committee.service.CertificateService;
import com.ua.committee.service.UserService;

@Controller
public class CertificateController {
	@Autowired
	private CertificateService certificateService;

	@Autowired
	private UserService userService;

	@RequestMapping(value = "/createCertificate", method = RequestMethod.GET)
	public String createCertificate(Model model) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String userEmail = auth.getName();
		User user = userService.findByEmail(userEmail);

		model.addAttribute("certificateForm", new Certificate());
		model.addAttribute("photo", user);

		return "createCertificate";
	}

	@RequestMapping(value = "/createCertificate", method = RequestMethod.POST)
	private String createCertificate(@ModelAttribute("certificateForm") Certificate certificateForm) {

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String userEmail = auth.getName();
		User user = userService.findByEmail(userEmail);
		user.setRole(UserRole.ROLE_APPROVED);

		userService.update(user);
		certificateForm.setUser(user);
		certificateService.save(certificateForm);

		return "redirect:/addPhoto";

	}

}
