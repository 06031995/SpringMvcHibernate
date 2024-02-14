package com.springMvc.DaoImpl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springMvc.Dao.RegistrationDao;
import com.springMvc.Dto.Employee;

@Repository
public class RegistrationDaoImpl implements RegistrationDao {
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public int saveInfo(Employee emp) {
		int response = 0;
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(emp);
			int emp_id = emp.getEmp_id();
			response = emp_id;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return response;
	}

}
