package com.ua.committee.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ua.committee.domain.FacultyRegistration;

public interface FacultyRegistrationRepository extends JpaRepository<FacultyRegistration, Integer> {

}
