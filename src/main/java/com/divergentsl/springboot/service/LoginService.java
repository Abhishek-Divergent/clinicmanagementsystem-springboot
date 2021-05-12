package com.divergentsl.springboot.service;

import java.util.List;

import com.divergentsl.springboot.entity.Admin;
import com.divergentsl.springboot.entity.Doctor;

public interface LoginService {
	List<Admin> adminRead();

	List<Doctor> doctorRead();
}
