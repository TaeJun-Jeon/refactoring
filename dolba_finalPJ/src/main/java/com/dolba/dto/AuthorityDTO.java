package com.dolba.dto;

import org.springframework.stereotype.Component;

@Component
public class AuthorityDTO{
	private String userId;
	private String role;
	private String password;
	private static final long serialVersionUID = 0000;
	
	public AuthorityDTO() {}
	public AuthorityDTO(String userId, String role, String password) {
		super();
		this.userId = userId;
		this.role = role;
		this.password = password;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
   
}