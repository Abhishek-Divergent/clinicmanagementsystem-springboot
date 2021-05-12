package com.divergentsl.springboot.dao;

import java.util.List;

import com.divergentsl.springboot.entity.Admin;
import com.divergentsl.springboot.entity.Doctor;



public interface LogInDao {
    List<Admin>  adminRead();
    List<Doctor> doctorRead();
}
