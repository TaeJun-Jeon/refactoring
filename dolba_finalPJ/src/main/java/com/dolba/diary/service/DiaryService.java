package com.dolba.diary.service;

import java.util.List;

import com.dolba.dto.CallDTO;
import com.dolba.dto.DiaryDTO;
import com.dolba.dto.OwnerRequestDTO;

public interface DiaryService {
	/**
	 * 일지 등록하기
	 **/
	public int insertDiary(DiaryDTO diaryDTO);
	
	/**
	 * 부르기 
	 * 해당 일지 검색하기
	 **/
	public List<DiaryDTO> selectDiaryByCall(String sittingId);
	
	/**
	 * 일지작성하는 펫시터사진 검색하기
	 * */
	public String selectSitterFnameByCall(String sittingId);
	
	/**
	 * 맡기기
	 * 해당 일지 검색하기
	 **/
	public List<DiaryDTO> selectDiaryByRequest(String sittingId);
	
	/**
	 * 일지작성하는 펫시터 검색하기
	 * */
	public String selectSitterFnameByRequest(String sittingId);
}
