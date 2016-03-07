package com.dudu.app.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "login_user")
public class User implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Long id;

	@Column(name = "login_name", length = 20)
	private String name;

	@Column(name = "login_password", length = 20)
	private String password;

	@Column(name = "adminflg")
	private Boolean adminFlag;
	
	
	@Override
	public String toString() {
		return "User [name=" + name + ", password=" + password + "]";
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Boolean getAdminFlag() {
		return adminFlag;
	}

	public void setAdminFlag(Boolean adminFlag) {
		this.adminFlag = adminFlag;
	}
	
	
	
}
