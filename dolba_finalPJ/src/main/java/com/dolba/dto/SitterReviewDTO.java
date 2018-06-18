package com.dolba.dto;

public class SitterReviewDTO {
	private String sitterReviewId;
	private String sitterId;
	private String ownerId;
	private String sitterReviewContent;
	private String sitterReviewWriteday;
	private int sitterReviewGrade;
	
	public String getSitterReviewId() {
		return sitterReviewId;
	}
	public void setSitterReviewId(String sitterReviewId) {
		this.sitterReviewId = sitterReviewId;
	}
	public String getSitterId() {
		return sitterId;
	}
	public void setSitterId(String sitterId) {
		this.sitterId = sitterId;
	}
	public String getOwnerId() {
		return ownerId;
	}
	public void setOwnerId(String ownerId) {
		this.ownerId = ownerId;
	}
	public String getSitterReviewContent() {
		return sitterReviewContent;
	}
	public void setSitterReviewContent(String sitterReviewContent) {
		this.sitterReviewContent = sitterReviewContent;
	}
	public String getSitterReviewWriteday() {
		return sitterReviewWriteday;
	}
	public void setSitterReviewWriteday(String sitterReviewWriteday) {
		this.sitterReviewWriteday = sitterReviewWriteday;
	}
	public int getSitterReviewGrade() {
		return sitterReviewGrade;
	}
	public void setSitterReviewGrade(int sitterReviewGrade) {
		this.sitterReviewGrade = sitterReviewGrade;
	}
	
	
}
