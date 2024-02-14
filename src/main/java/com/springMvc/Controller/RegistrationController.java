package com.springMvc.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.springMvc.Dto.Employee;
import com.springMvc.Service.RegistrationService;

@RestController
@RequestMapping("/register")
public class RegistrationController {
	
	@Autowired
	RegistrationService regService;
	
	
	@RequestMapping(value="/saveInfo", method= RequestMethod.POST)
	public int saveInfo(Employee emp){
		int response=regService.saveInfo(emp);
		System.out.println(emp);
		return response;
	}

}
