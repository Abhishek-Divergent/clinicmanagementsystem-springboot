package com.divergentsl.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.divergentsl.springboot.dao.LogInDao;
import com.divergentsl.springboot.entity.Admin;
import com.divergentsl.springboot.entity.Doctor;

@Service
public class LoginServiceImpl implements LoginService {

	@Autowired
	LogInDao logInDao;

	@Override
	public List<Admin> adminRead() {
		return logInDao.adminRead();
	}

	@Override
	public List<Doctor> doctorRead() {
		return logInDao.doctorRead();
	}

}
