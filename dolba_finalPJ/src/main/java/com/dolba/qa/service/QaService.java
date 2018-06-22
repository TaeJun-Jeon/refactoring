package com.dolba.qa.service;

import java.util.List;

import com.dolba.dto.QaDTO;
import com.dolba.dto.ReplyDTO;

public interface QaService {
	/**
	 * qa게시판 모든 리스트 검색하는 메소드
	 **/
	public List<QaDTO> selectAllQa();
	
	/**
	 * 해당 qa게시판 상세보기 
	 **/
	public QaDTO selectQaByQaId(String QAId);
	
	/**
	 * qa 등록하기
	 **/
	public int insertQa(QaDTO qaDTO);
	
	/**
	 * keyField, keyWord로 검색하기
	 **/
	public List<QaDTO> searchQaByKeyword(String keyField, String keyWord);
	
	/**
	 * 댓글들 가져오기
	 **/
	public List<ReplyDTO> selectReply(String qaId);
}
