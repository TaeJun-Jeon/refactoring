package com.dolba.dto;

import org.springframework.stereotype.Component;

@Component
public class AuthorityDTO{
	private String userId;
	private String role;
	private static final long serialVersionUID = 0000;
	
	public AuthorityDTO(){}
	public AuthorityDTO(String userId, String role) {
		super();
		this.userId = userId;
		this.role = role;
	}

	public String getUserId() {
		return userId;
	}
	public void setUsername(String userId) {
		this.userId = userId;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	
	
   
}