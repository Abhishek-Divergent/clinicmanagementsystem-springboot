package com.divergentsl.springboot.service;

import java.util.List;

import com.divergentsl.springboot.entity.Drugs;

public interface DrugsService {
	void create(Drugs drugs);

	List<Drugs> read();

	boolean delete(int deleteid);

	boolean update(int updateid, String name, String description);

	Drugs findById(long id);
}
