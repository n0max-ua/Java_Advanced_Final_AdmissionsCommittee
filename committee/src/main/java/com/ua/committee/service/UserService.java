package com.ua.committee.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.ua.committee.dao.UserRepository;
import com.ua.committee.domain.User;
import com.ua.committee.domain.UserRole;

@Service
public class UserService {
	@Autowired
	private UserRepository userRepository;

	@Autowired
	private PasswordEncoder bCryptPasswordEncoder;

	public void save(User user) {
		user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
		user.setPassword(bCryptPasswordEncoder.encode(user.getPasswordConfirm()));
		user.setRole(UserRole.ROLE_USER);
		userRepository.save(user);
	}

	public User findByEmail(String email) {
		return userRepository.findByEmail(email).get();
	}

	public void update(User user) {
		userRepository.save(user);
	}

}
