package com.dolba.call.dao;

import java.util.List;

import com.dolba.dto.CallDTO;
import com.dolba.dto.SittingOptionDTO;

public interface CallDAO {
	
	/**
	 * 부르기 리스트를 꺼내오는 메소드
	 * @return
	 */
	List<CallDTO> selectAllCallList();
	
	
	/**
	 * 부르기 옵션에 해당하는 리스트를 꺼내오는 메소드
	 * @param opsList
	 * @return
	 */
	List<CallDTO> selectCallListbyOption(List<String> opsList);


	/**
	 * 부르기 Id에 해당하는 옵션 리스트 꺼내오는 메소드
	 * @param callId
	 * @return
	 */
	List<SittingOptionDTO> selectSittingOptions(String callId);

	/**
	 * 옵션, 가격 검색 조건에 해당하는 call list 검색하는 메소드
	 * @param opsList
	 * @param price
	 * @return
	 */
	List<CallDTO> selectCallListByOptionPrice(List<String> opsList, int price);

}
