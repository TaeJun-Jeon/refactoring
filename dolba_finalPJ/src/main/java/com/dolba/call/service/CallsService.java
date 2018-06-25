package com.dolba.call.service;

import java.util.List;

import com.dolba.dto.CallDTO;

public interface CallsService {
	List<CallDTO> selectAllCallList();
	
	List<CallDTO> selectCallListbyOptionPrice(String[] optionSelect, int price);

	void insertCall(CallDTO callDTO, String[] optionSelect);

	CallDTO selectCallByCallId(String callId);

	void insertSitterRequest(String callId, String sitterId, String ownerId);
	
	CallDTO ownerCallDetail(String key);

	int updatePaymentState(String key, String state);
}
