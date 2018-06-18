package com.dolba.dto;

import org.springframework.web.multipart.MultipartFile;

public class OwnerDTO {
	
	private String ownerId;
	private String ownerPassword;
	private String ownerName;
	private String ownerAddr;
	private String ownerDetailAddr;
	private String ownerPhone;
	private String ownerEmail;
	private String ownerEmail1;
	private String ownerEmail2;
	private String ownerFname;
	private String ownerGender;
	
	private MultipartFile file;
	
	public OwnerDTO() {}
	public OwnerDTO(String ownerId, String ownerPassword, String ownerName, String ownerAddr, String ownerDetailAddr, String ownerPhone,String ownerEmail,
			String ownerEmail1,String ownerEmail2, String ownerFname, String ownerGender) {
		super();
		this.ownerId = ownerId;
		this.ownerPassword = ownerPassword;
		this.ownerName = ownerName;
		this.ownerAddr = ownerAddr;
		this.ownerDetailAddr = ownerDetailAddr;
		this.ownerPhone = ownerPhone;
		this.ownerEmail = ownerEmail;
		this.ownerEmail1 = ownerEmail1;
		this.ownerEmail2 = ownerEmail2;
		this.ownerFname = ownerFname;
		this.ownerGender = ownerGender;
		
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
	public String getOwnerEmail1() {
		return ownerEmail1;
	}
	public void setOwnerEmail1(String ownerEmail1) {
		this.ownerEmail1 = ownerEmail1;
	}
	
	public String getOwnerEmail2() {
		return ownerEmail2;
	}
	public void setOwnerEmail2(String ownerEmail2) {
		this.ownerEmail2 = ownerEmail2;
	}
	public String getOwnerfName() {
		return ownerFname;
	}
	public void setOwnerfName(String ownerFname) {
		this.ownerFname = ownerFname;
	}
	public String getOwnerGender() {
		return ownerGender;
	}
	public void setOwnerGender(String ownerGender) {
		this.ownerGender = ownerGender;
	}
	public String getOwnerEmail() {
		return ownerEmail;
	}
	public void setOwnerEmail(String ownerEmail) {
		this.ownerEmail = ownerEmail;
	}
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	}
	
	
	
	
	


}
