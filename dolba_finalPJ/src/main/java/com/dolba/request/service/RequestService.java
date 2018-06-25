package com.dolba.request.service;

import java.util.List;

import com.dolba.dto.OptionsDTO;
import com.dolba.dto.OwnerRequestDTO;
import com.dolba.dto.SitterDTO;

public interface RequestService {
	/**
	 * 서비스에서 제공하느 모든 옵션 리스트
	 * @return
	 */
	List<OptionsDTO> selectAllOption();

	/**
	 * 처리되지 않은 sitter Request 숫자를 찾아오는 메소드
	 * @param userId
	 * @return
	 */
	String selectSitterRequestCountByUserId(String userId);

	/**
	 * 처리되지 않은 owner Request 숫자를 찾아오는 메소드
	 * @param userId
	 * @return
	 */
	String selectOwnerRequestCountByUserId(String userId);
	
	
	
	OwnerRequestDTO ownerRequestDetail(String primaryKey);

	
	int updatePaymentState(String ownerRequestId, String state);
}
