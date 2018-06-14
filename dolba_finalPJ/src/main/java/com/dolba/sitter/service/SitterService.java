package com.dolba.sitter.service;

import java.util.List;

import com.dolba.dto.SitterDTO;

public interface SitterService {
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
}
