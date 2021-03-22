package com.ua.committee.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ua.committee.dao.FacultyRepository;
import com.ua.committee.domain.Faculty;

@Service
public class FacultyService {

	@Autowired
	private FacultyRepository facultyRepository;

	public void save(Faculty faculty) {
		facultyRepository.save(faculty);
	}
	
	public List<Faculty> getAll(){
		return facultyRepository.findAll();
	}

}
