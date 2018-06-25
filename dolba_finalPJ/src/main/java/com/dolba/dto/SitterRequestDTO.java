package com.dolba.dto;

public class SitterRequestDTO {

	private String sitterRequestId;
	private String callId;
	private String ownerId;
	private String sitterId;
	private String ownerApproval;
		
	public String getSitterRequestId() {
		return sitterRequestId;
	}
	public void setSitterRequestId(String sitterRequestId) {
		this.sitterRequestId = sitterRequestId;
	}
	public String getCallId() {
		return callId;
	}
	public void setCallId(String callId) {
		this.callId = callId;
	}
	public String getOwnerId() {
		return ownerId;
	}
	public void setOwnerId(String ownerId) {
		this.ownerId = ownerId;
	}
	public String getSitterId() {
		return sitterId;
	}
	public void setSitterId(String sitterId) {
		this.sitterId = sitterId;
	}
	public String getOwnerApproval() {
		return ownerApproval;
	}
	public void setOwnerApproval(String ownerApproval) {
		this.ownerApproval = ownerApproval;
	}

	
	
}
