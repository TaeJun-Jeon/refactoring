package com.dolba.board.dao;

import java.util.List;

import com.dolba.dto.BoardDTO;

public interface BoardDAO {
	/**
	 * qa게시판 모든 리스트 검색하는 메소드
	 **/
	public List<BoardDTO> selectAllQa();
}
