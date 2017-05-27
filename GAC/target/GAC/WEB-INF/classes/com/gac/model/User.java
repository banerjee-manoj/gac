package com.gac.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name ="user")
@SuppressWarnings("serial")
public class User implements Serializable {
	
@Id
@GeneratedValue
@Column(name ="id",length=11)
private long id;

@Column(name="user_name")
String userName;

@Column(name="password")
String password;

public long getId() {
	return id;
}

public void setId(long id) {
	this.id = id;
}

public String getUserName() {
	return userName;
}

public void setUserName(String userName) {
	this.userName = userName;
}

public String getPassword() {
	return password;
}

public void setPassword(String password) {
	this.password = password;
}
}
