package com.divergentsl.springboot.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.divergentsl.springboot.dao.ApplicationDao;
import com.divergentsl.springboot.entity.Labtest;

@Service
public class LabTestImpl implements LabTestService {
	@Autowired
	private ApplicationDao<Labtest> applicationDao;

	@Transactional
	@Override
	public void create(Labtest Labtest) {
		applicationDao.create(Labtest);
	}

	@Transactional
	@Override
	public boolean update(int updateid, String name, int price) {
		Labtest labtest = findById(updateid);
		if (labtest != null) {
			labtest.setId(updateid);
			labtest.setName(name);
			labtest.setPrice(price);
			applicationDao.update(labtest);
			return true;
		} else {
			return false;
		}
	}

	@Override
	public List<Labtest> read() {
		return applicationDao.read();
	}

	@Transactional
	@Override
	public boolean delete(int deleteid) {
		Labtest labtest = findById(deleteid);
		if (labtest != null) {
			applicationDao.delete(labtest);
			return true;
		} else {
			return false;
		}
	}

	@Override
	public Labtest findById(long id) {
		return applicationDao.findById(id);
	}

}
