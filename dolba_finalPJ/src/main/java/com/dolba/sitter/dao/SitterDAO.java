package com.dolba.sitter.dao;

import java.util.List;

import com.dolba.dto.SitterDTO;
import com.dolba.dto.SitterOptionDTO;

public interface SitterDAO {
	/**
	 * 등록되어있는 모든 펫시터 선택하는 메소드
	 * @return
	 */
	public List<SitterDTO> selectAllSitter();
	
	/**
	 * 허가된 펫시터 리스트 선택하는 메소드
	 * @return
	 */
	public List<SitterDTO> selectAllPermittedSitter();
	
	/**
	 * 허가 대기중인 펫시터 리스트 선택하는 메소드
	 * @return
	 */
	public List<SitterDTO> selectAllWaitingSitter();
	
	/**
	 * sitter 가 설정해 놓은 옵션을 sitterId를 통해 가져오는 메소드
	 * @param sitterId
	 * @return
	 */
	public List<SitterOptionDTO> selectSitterOptions(String sitterId);

	/**
	 * option들과 grade 검색조건으로 sitter 검색하는 메소드
	 * @param opList
	 * @param grade
	 * @return
	 */
	public List<SitterDTO> selectSittersByOpGrade(List<String> opList, int grade);
}
