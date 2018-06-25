package com.dolba.dto;

public class OwnerRequestDTO {

	private String ownerRequestId;
	private String ownerId;
	private String sitterId;
	private int ownerRequestPrice;
	private String ownerRequestStart;
	private String ownerRequestEnd;
	private String ownerRequestPetCount;
	private String sitterApproval;
	private String requestPaymentState;
	
	
	
	public OwnerRequestDTO() {}
	public OwnerRequestDTO(String ownerRequestId, String ownerId, String sitterId, int ownerRequestPrice, String ownerRequestStart,
			String ownerRequestEnd, String ownerRequestPetCount, String sitterApproval) {
		super();
		this.ownerRequestId = ownerRequestId;
		this.ownerId = ownerId;
		this.sitterId = sitterId;
		this.ownerRequestPrice = ownerRequestPrice;
		this.ownerRequestStart = ownerRequestStart;
		this.ownerRequestEnd = ownerRequestEnd;
		this.ownerRequestPetCount = ownerRequestPetCount;
		this.sitterApproval = sitterApproval;
	}
	
	
	public String getRequestPaymentState() {
		return requestPaymentState;
	}
	public void setRequestPaymentState(String requestPaymentState) {
		this.requestPaymentState = requestPaymentState;
	}
	public String getOwnerRequestId() {
		return ownerRequestId;
	}
	public void setOwnerRequestId(String ownerRequestId) {
		this.ownerRequestId = ownerRequestId;
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
	public int getOwnerRequestPrice() {
		return ownerRequestPrice;
	}
	public void setOwnerRequestPrice(int ownerRequestPrice) {
		this.ownerRequestPrice = ownerRequestPrice;
	}
	public String getOwnerRequestStart() {
		return ownerRequestStart;
	}
	public void setOwnerRequestStart(String ownerRequestStart) {
		this.ownerRequestStart = ownerRequestStart;
	}
	public String getOwnerRequestEnd() {
		return ownerRequestEnd;
	}
	public void setOwnerRequestEnd(String ownerRequestEnd) {
		this.ownerRequestEnd = ownerRequestEnd;
	}
	public String getOwnerRequestPetCount() {
		return ownerRequestPetCount;
	}
	public void setOwnerRequestPetCount(String ownerRequestPetCount) {
		this.ownerRequestPetCount = ownerRequestPetCount;
	}
	public String getSitterApproval() {
		return sitterApproval;
	}
	public void setSitterApproval(String sitterApproval) {
		this.sitterApproval = sitterApproval;
	}
	
	
	
	
}
