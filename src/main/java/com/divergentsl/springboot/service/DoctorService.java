package com.divergentsl.springboot.service;

import java.util.List;

import com.divergentsl.springboot.entity.Doctor;

public interface DoctorService {

	void create(Doctor doctor);

	List<Doctor> read();

	boolean delete(int deleteid);

	boolean update(int updateid, String name, String username, String password, String speciality, String contact,
			int fees);

	Doctor findById(long id);
}
