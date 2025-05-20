package com.dto;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class UserInfo {
private String uName;
private String uMobile;
private String uEmail;
@Id
private String user;
private String password;

public UserInfo() {
	
}


public UserInfo(String uName, String uMobile, String uEmail, String user, String password) {
	super();
	this.uName = uName;
	this.uMobile = uMobile;
	this.uEmail = uEmail;
	this.user = user;
	this.password = password;
}
public String getuName() {
	return uName;
}
public void setuName(String uName) {
	this.uName = uName;
}
public String getuMobile() {
	return uMobile;
}
public void setuMobile(String uMobile) {
	this.uMobile = uMobile;
}
public String getuEmail() {
	return uEmail;
}
public void setuEmail(String uEmail) {
	this.uEmail = uEmail;
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
