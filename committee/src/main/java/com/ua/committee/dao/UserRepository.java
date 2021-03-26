package com.ua.committee.dao;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ua.committee.domain.User;

public interface UserRepository extends JpaRepository<User, Integer> {

	public Optional<User> findByEmail(String email);

}
