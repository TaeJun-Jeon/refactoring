package com.dolba.call.service;

import java.util.List;

import com.dolba.dto.CallDTO;

public interface CallsService {
	List<CallDTO> selectAllCallList();
	
	List<CallDTO> selectCallListbyOptionPrice(String[] optionSelect, int price);
}
