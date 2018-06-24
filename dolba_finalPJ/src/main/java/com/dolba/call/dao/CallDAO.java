package com.dolba.call.dao;

import java.util.List;
import java.util.Map;

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


	/**
	 * 부르기 신청 내용 추가하는 메소드
	 * @param callDTO
	 */
	void insertCall(CallDTO callDTO);


	/**
	 * 부르기 신청 옵션 신청옵션테이블에 추가하는 메소드
	 * @param optionSelect
	 */
	void insertSittingOption(String[] optionSelect,String callId);

	/**
	 * 마지막으로 insert 된 call Id 찾아오기
	 * @return
	 */
	String selectLastCallId(String ownerId);


	/**
	 * callId로 call 상세 정보를 가져오는 메소드
	 * @param callId
	 * @return
	 */
	CallDTO selectCallByCallId(String callId);
}
