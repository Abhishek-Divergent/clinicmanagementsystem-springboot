package com.divergent.clinicmanagementsystem.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.divergentsl.springboot.dao.ApplicationDao;
import com.divergentsl.springboot.entity.Drugs;
import com.divergentsl.springboot.service.DrugsService;

@Service
public class DrugsImpl implements DrugsService {

	@Autowired
	private ApplicationDao<Drugs> applicationDao;

	@Transactional
	@Override
	public void create(Drugs drugs) {
		applicationDao.create(drugs);
	}

	@Override
	public List<Drugs> read() {
		return applicationDao.read();
	}

	@Transactional
	@Override
	public boolean delete(int deleteid) {
		Drugs drugs = findById(deleteid);
		if (drugs != null) {
			applicationDao.delete(drugs);
			return true;
		} else {
			return false;
		}
	}
	@Transactional
	@Override
	public boolean update(int updateid, String name, String description) {
		Drugs drugs = findById(updateid);
		if (drugs != null) {
			drugs.setId(updateid);
			drugs.setName(name);
			drugs.setDescription(description);
			applicationDao.update(drugs);
			return true;
		} else {
			return false;
		}
	}

	@Override
	public Drugs findById(long id) {
		return applicationDao.findById(id);
	}

}