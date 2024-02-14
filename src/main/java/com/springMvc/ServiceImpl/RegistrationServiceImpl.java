package com.springMvc.ServiceImpl;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springMvc.Dao.RegistrationDao;
import com.springMvc.Dto.Employee;
import com.springMvc.Service.RegistrationService;

@Service
public class RegistrationServiceImpl implements RegistrationService{

	@Autowired
	RegistrationDao regDao;
	
	@Override
	@Transactional
	public int saveInfo(Employee emp) {
		return regDao.saveInfo(emp);
	}

}
