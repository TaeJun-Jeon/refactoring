package com.dolba.dto;

import java.util.List;

public class CallDTO {
	
	private String callId;
	private String sitterId;
	private String ownerId;
	private int callTotalPrice;
	private String callComment;
	private String callReservateStart;
	private String callReservateEnd;
	private String callWriteday;
	private int callPetcount;
	private String ownerApproval;
	private OwnerDTO ownerDTO;
	private List<SittingOptionDTO> sittingOptionList;
	
	public String getCallId() {
		return callId;
	}
	public void setCallId(String callId) {
		this.callId = callId;
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
	public String getCallComment() {
		return callComment;
	}
	public void setCallComment(String callComment) {
		this.callComment = callComment;
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
	public String getCallWriteday() {
		return callWriteday;
	}
	public void setCallWriteday(String callWriteday) {
		this.callWriteday = callWriteday;
	}
	public int getCallPetcount() {
		return callPetcount;
	}
	public void setCallPetcount(int callPetcount) {
		this.callPetcount = callPetcount;
	}
	public String getOwnerApproval() {
		return ownerApproval;
	}
	public void setOwnerApproval(String ownerApproval) {
		this.ownerApproval = ownerApproval;
	}
	public OwnerDTO getOwnerDTO() {
		return ownerDTO;
	}
	public void setOwnerDTO(OwnerDTO ownerDTO) {
		this.ownerDTO = ownerDTO;
	}
	public List<SittingOptionDTO> getSittingOptionList() {
		return sittingOptionList;
	}
	public void setSittingOptionList(List<SittingOptionDTO> sittingOptionList) {
		this.sittingOptionList = sittingOptionList;
	}

	
	public String getOwnerId() {
		return ownerId;
	}
	public void setOwnerId(String ownerId) {
		this.ownerId = ownerId;
	}
	
}
