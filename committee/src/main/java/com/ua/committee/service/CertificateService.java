package com.ua.committee.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ua.committee.dao.СertificateRepository;
import com.ua.committee.domain.Certificate;

@Service
public class CertificateService {
	@Autowired
	private СertificateRepository certRepository;

	public void save(Certificate certificate) {
		certRepository.save(certificate);

	}

}
