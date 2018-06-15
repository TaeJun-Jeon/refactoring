package com.dolba.dto;

public class CallDTO {
	
	private String callId;
	private String ownerId;
	private String sitterId;
	private int callTotalPrice;
	private String callComment;
	private String callReservateStart;
	private String callReservateEnd;
	private String writeDay;
	private int callPetCount;
	private String ownerApproval;
	
	public CallDTO() {}

	public CallDTO(String callId, String ownerId, String sitterId, int callTotalPrice, String callComent, String callReservateStart,
			String callReservateEnd, String writeDay, int callPetCount, String ownerApproval) {
		super();
		this.callId = callId;
		this.ownerId = ownerId;
		this.sitterId = sitterId;
		this.callTotalPrice = callTotalPrice;
		this.callComment = callComent;
		this.callReservateStart = callReservateStart;
		this.callReservateEnd = callReservateEnd;
		this.writeDay = writeDay;
		this.callPetCount = callPetCount;
		this.ownerApproval = ownerApproval;
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

	public int getCallTotalPrice() {
		return callTotalPrice;
	}

	public void setCallTotalPrice(int callTotalPrice) {
		this.callTotalPrice = callTotalPrice;
	}

	public String getCallComent() {
		return callComment;
	}

	public void setCallComent(String callComent) {
		this.callComment = callComent;
	}

	public String getCallReservateStart() {
		return callReservateStart;
	}

	public void setCallReservateStart(String callReservateStart) {
		this.callReservateStart = callReservateStart;
	}

	public String getCallReservateEnd() {
		return callReservateEnd;
	}

	public void setCallReservateEnd(String callReservateEnd) {
		this.callReservateEnd = callReservateEnd;
	}

	public String getWriteDay() {
		return writeDay;
	}

	public void setWriteDay(String writeDay) {
		this.writeDay = writeDay;
	}

	public int getCallPetCount() {
		return callPetCount;
	}

	public void setCallPetCount(int callPetCount) {
		this.callPetCount = callPetCount;
	}

	public String getOwnerApproval() {
		return ownerApproval;
	}

	public void setOwnerApproval(String ownerApproval) {
		this.ownerApproval = ownerApproval;
	}
	
	

}
