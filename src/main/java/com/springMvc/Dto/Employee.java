package com.springMvc.Dto;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity(name = "emp")
public class Employee {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int emp_id;
	
	private String fname;
	
	private String lname;

	
	private String smsflow;
	
	public int getEmp_id() {
		return emp_id;
	}
	public void setEmp_id(int emp_id) {
		this.emp_id = emp_id;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getSmsflow() {
		return smsflow;
	}
	public void setSmsflow(String smsflow) {
		this.smsflow = smsflow;
	}
	@Override
	public String toString() {
		return "Employee [emp_id=" + emp_id + ", fname=" + fname + ", lname=" + lname + ", smsflow=" + smsflow + "]";
	}
	

	
}
