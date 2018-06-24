package com.dolba.request.dao;

import java.util.List;
import java.util.Map;

import com.dolba.dto.OptionsDTO;
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
	
}
