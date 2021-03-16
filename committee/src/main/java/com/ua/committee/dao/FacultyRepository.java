package com.ua.committee.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ua.committee.domain.Faculty;

public interface FacultyRepository extends JpaRepository<Faculty, Integer> {

}
