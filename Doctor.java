package com.dto;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Doctor {
private String dName;
private String dMobile;
private String dEmail;
private String dDesig;
@Id
private String user;
private String password;

public Doctor() {
	
}

public Doctor(String dName, String dMobile, String dEmail, String dDesig, String user, String password) {
	super();
	this.dName = dName;
	this.dMobile = dMobile;
	this.dEmail = dEmail;
	this.dDesig = dDesig;
	this.user = user;
	this.password = password;
}
public String getdName() {
	return dName;
}
public void setdName(String dName) {
	this.dName = dName;
}
public String getdMobile() {
	return dMobile;
}
public void setdMobile(String dMobile) {
	this.dMobile = dMobile;
}
public String getdEmail() {
	return dEmail;
}
public void setdEmail(String dEmail) {
	this.dEmail = dEmail;
}
public String getdDesig() {
	return dDesig;
}
public void setdDesig(String dDesig) {
	this.dDesig = dDesig;
}
public String getUser() {
	return user;
}
public void setUser(String user) {
	this.user = user;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}

}
