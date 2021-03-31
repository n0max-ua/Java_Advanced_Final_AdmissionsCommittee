package com.ua.committee.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.ua.committee.dao.UserRepository;
import com.ua.committee.domain.User;
import com.ua.committee.domain.UserRole;

@Service
public class UserService {
	
	Logger logger = LoggerFactory.getLogger(UserService.class);
	
	@Autowired
	private UserRepository userRepository;

	@Autowired
	private PasswordEncoder bCryptPasswordEncoder;

	public void save(User user) {
		logger.info("Create new user: " + user);
		user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
		user.setPassword(bCryptPasswordEncoder.encode(user.getPasswordConfirm()));
		user.setRole(UserRole.ROLE_USER);
		userRepository.save(user);
	}

	public User findByEmail(String email) {
		logger.info("Get faculty registration with email: " + email);
		return userRepository.findByEmail(email).get();
	}

	public void update(User user) {
		logger.info("Update user: " + user);
		userRepository.save(user);
	}

}
