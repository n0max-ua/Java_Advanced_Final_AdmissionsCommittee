package com.ua.committee.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ua.committee.dao.СertificateRepository;
import com.ua.committee.domain.Certificate;

@Service
public class CertificateService {

	Logger logger = LoggerFactory.getLogger(CertificateService.class);

	@Autowired
	private СertificateRepository certificateRepository;

	public void save(Certificate certificate) {
		logger.info("Create new certificate: " + certificate);
		certificateRepository.save(certificate);

	}

}
