package com.dolba.request.dao;

import java.util.List;
import java.util.Map;

import com.dolba.dto.OptionsDTO;
import com.dolba.dto.OwnerRequestDTO;
import com.dolba.dto.SitterDTO;

public interface RequestDAO {
	/**
	 * 서비스에서 제공하는 모든 option list select
	 * @return
	 */
	public List<OptionsDTO> selectAllOption();

	/**
	 * 시터의 출장 요청을 추가하는 메소드
	 * @param map
	 */
	public void insertSitterRequest(Map<String, String> map);

	/**
	 * 처리되지 않은 sitter request 숫자를 찾아오는 메소드
	 * @param userId
	 * @return
	 */
	public String selectSitterRequestCountByUserId(String userId);

	/**
	 * 처리되지 않은 owner request 숫자를 찾아오는 메소드
	 * @param userId
	 * @return
	 */
	public String selectOwnerRequestCountByUserId(String userId);
	
	public OwnerRequestDTO selectRequestByKey(String key);

	public int updatePaymentState(String ownerRequestId, String state);
	
}
