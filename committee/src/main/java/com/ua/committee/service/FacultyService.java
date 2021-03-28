package com.ua.committee.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ua.committee.dao.FacultyRepository;
import com.ua.committee.domain.Faculty;

@Service
public class FacultyService {
	
	Logger logger = LoggerFactory.getLogger(FacultyService.class);

	@Autowired
	private FacultyRepository facultyRepository;

	public void save(Faculty faculty) {
		logger.info("Create new faculty: " + faculty);
		facultyRepository.save(faculty);
	}

	public Faculty findById(Integer id) {
		logger.info("Get faculty with id: " + id);
		return facultyRepository.findById(id).get();
	}

	public List<Faculty> getAll() {
		logger.info("Get all faculty");
		return facultyRepository.findAll();
	}

}
