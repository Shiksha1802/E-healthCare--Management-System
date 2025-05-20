package com.dto;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class AdminInfo {
	@Id
private String aName;
private String password;
public AdminInfo() {
	
}

public AdminInfo(String aName,String password) {
	this.aName=aName;
	this.password=password;
}
public String getaName() {
	return aName;
}
public void setaName(String aName) {
	this.aName = aName;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}

}
