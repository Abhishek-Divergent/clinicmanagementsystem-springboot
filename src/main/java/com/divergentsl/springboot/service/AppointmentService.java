package com.divergentsl.springboot.service;

import java.util.List;

import com.divergentsl.springboot.entity.Appointment;

public interface AppointmentService {
	
	void create(Appointment appointment);

	List<Appointment> read();

	boolean remove(int deleteid);

	boolean update(int updateid, int doctor_id, int patient_id, String doctor_name, String patient_name, String problem,
			String date, String time);

	Appointment findById(long id);
}
