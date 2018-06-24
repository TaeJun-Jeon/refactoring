package com.dolba.board.service;

import java.util.List;

import com.dolba.dto.BoardDTO;
import com.dolba.dto.ReplyDTO;

public interface BoardService {
	/**
	 * qa게시판 모든 리스트 검색하는 메소드
	 **/
	public List<BoardDTO> selectAllQa();
	
	/**
	 * 해당 qa게시판 상세보기 ,조회수 증가
	 **/
	public BoardDTO selectQaByQaId(String qaId,boolean state);
	
	/**
	 * qa 등록하기
	 **/
	public int insertQa(BoardDTO qaDTO);
	
	/**
	 * keyField, keyWord로 검색하기
	 **/
	public List<BoardDTO> searchQaByKeyword(String keyField, String keyWord);
	
	/**
	 * 댓글들 가져오기
	 **/
	public List<ReplyDTO> selectReply(String qaId);
	
	/**
	 * 수정하기
	 **/
	public int updateQa(BoardDTO boardDTO);
	
	/**
	 * 삭제하기
	 **/
	public int deleteQa(String qaId);
}
