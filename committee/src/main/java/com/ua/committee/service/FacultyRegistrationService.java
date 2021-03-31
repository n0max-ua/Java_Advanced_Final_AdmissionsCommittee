package com.ua.committee.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ua.committee.dao.FacultyRegistrationRepository;
import com.ua.committee.domain.FacultyRegistration;

@Service
public class FacultyRegistrationService {
	
	Logger logger = LoggerFactory.getLogger(FacultyRegistrationService.class);

	@Autowired
	private FacultyRegistrationRepository facultyRegistrationRepository;

	public void save(FacultyRegistration facultyRegistration) {
		logger.info("Create new faculty registration: " + facultyRegistration);
		facultyRegistrationRepository.save(facultyRegistration);
	}

	public FacultyRegistration findById(Integer id) {
		logger.info("Get faculty registration with id: " + id);
		return facultyRegistrationRepository.findById(id).get();
	}

	public List<FacultyRegistration> findAll() {
		logger.info("Get all faculty registrations");
		return facultyRegistrationRepository.findAll();
	}

	public void delete(FacultyRegistration facultyRegistration) {
		logger.info("Delete faculty registration: " + facultyRegistration);
		facultyRegistrationRepository.delete(facultyRegistration);
	}

}
