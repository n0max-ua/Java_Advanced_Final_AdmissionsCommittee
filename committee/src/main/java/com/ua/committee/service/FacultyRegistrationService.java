package com.ua.committee.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ua.committee.dao.FacultyRegistrationRepository;
import com.ua.committee.domain.FacultyRegistration;

@Service
public class FacultyRegistrationService {

	@Autowired
	private FacultyRegistrationRepository facultyRegistrationRepository;

	public void save(FacultyRegistration facultyRegistration) {
		facultyRegistrationRepository.save(facultyRegistration);
	}

	public FacultyRegistration findById(Integer id) {
		return facultyRegistrationRepository.findById(id).get();
	}

	public List<FacultyRegistration> findAll() {
		return facultyRegistrationRepository.findAll();
	}

	public void delete(FacultyRegistration facultyRegistration) {
		facultyRegistrationRepository.delete(facultyRegistration);
	}

}
