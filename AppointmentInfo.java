package com.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@Entity
@Table(name = "appointments", uniqueConstraints = {@UniqueConstraint(columnNames = {"appoinDate", "appoinTime"})})
public class AppointmentInfo {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "patient_id")
	int id;
	
	String email;
	String birth;
	String appoinDate;
	String appoinTime;
	String doctor;
	String gender;
	String contact;
	String user;
	String symptom;
	String state;
	
	public AppointmentInfo( String email, String birth, String appoinDate, String appoinTime, String doctor,
			String gender, String contact,String user, String symptom) {
		super();
		this.email = email;
		this.birth = birth;
		this.appoinDate = appoinDate;
		this.appoinTime = appoinTime;
		this.doctor = doctor;
		this.gender = gender;
		this.contact = contact;
		this.user=user;
		this.symptom = symptom;
	}
	public AppointmentInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public AppointmentInfo(int id, String email, String birth, String appoinDate, String appoinTime,
			String doctor, String gender, String contact, String user,String symptom,String state) {
		super();
		this.id = id;
		this.email = email;
		this.birth = birth;
		this.appoinDate = appoinDate;
		this.appoinTime = appoinTime;
		this.doctor = doctor;
		this.gender = gender;
		this.contact = contact;
		this.symptom = symptom;
		this.state=state;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getAppoinDate() {
		return appoinDate;
	}
	public void setAppoinDate(String appoinDate) {
		this.appoinDate = appoinDate;
	}
	public String getAppoinTime() {
		return appoinTime;
	}
	public void setAppoinTime(String appoinTime) {
		this.appoinTime = appoinTime;
	}
	public String getDoctor() {
		return doctor;
	}
	public void setDoctor(String doctor) {
		this.doctor = doctor;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getSymptom() {
		return symptom;
	}
	public void setSymptom(String symptom) {
		this.symptom = symptom;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	
	
	
}
