package com.dolba.dto;

public class OwnerDTO {
	
	private String ownerId;
	private String ownerPassword;
	private String ownerName;
	private String ownerAddr;
	private String ownerDetailAddr;
	private String ownerPhone;
	private String ownerEmail;
	
	public OwnerDTO() {}
	public OwnerDTO(String ownerId, String ownerPassword, String ownerName, String ownerAddr, String ownerDetailAddr, String ownerPhone,
			String ownerEmail) {
		super();
		this.ownerId = ownerId;
		this.ownerPassword = ownerPassword;
		this.ownerName = ownerName;
		this.ownerAddr = ownerAddr;
		this.ownerDetailAddr = ownerDetailAddr;
		this.ownerPhone = ownerPhone;
		this.ownerEmail = ownerEmail;
	}
	public String getOwnerId() {
		return ownerId;
	}
	public void setOwnerId(String ownerId) {
		this.ownerId = ownerId;
	}
	public String getOwnerPassword() {
		return ownerPassword;
	}
	public void setOwnerPassword(String ownerPassword) {
		this.ownerPassword = ownerPassword;
	}
	public String getOwnerName() {
		return ownerName;
	}
	public void setOwnerName(String ownerName) {
		this.ownerName = ownerName;
	}
	public String getOwnerAddr() {
		return ownerAddr;
	}
	public void setOwnerAddr(String ownerAddr) {
		this.ownerAddr = ownerAddr;
	}
	public String getOwnerDetailAddr() {
		return ownerDetailAddr;
	}
	public void setOwnerDetailAddr(String ownerDetailAddr) {
		this.ownerDetailAddr = ownerDetailAddr;
	}
	public String getOwnerPhone() {
		return ownerPhone;
	}
	public void setOwnerPhone(String ownerPhone) {
		this.ownerPhone = ownerPhone;
	}
	public String getOwnerEmail() {
		return ownerEmail;
	}
	public void setOwnerEmail(String ownerEmail) {
		this.ownerEmail = ownerEmail;
	}
	
	
	

}
