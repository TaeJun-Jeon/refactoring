package com.dolba.notice.dao;

import java.util.List;

import com.dolba.dto.NoticeDTO;

public interface NoticeDAO {
	/**
	 * 레코드 전체 검색
	 */
	List<NoticeDTO> selectAll();
	
	/**
	 * 모델번호에 해당하는 레코드 검색
	 */
	NoticeDTO selectByModelNum(String noticeId);
	
	/**
	 * 모델번호에 해당하는 레코드 조회수 증가하기
	 */
	int readnumUpdate(String noticeId);

	/**
	 * 레코드 삽입
	 */
	int insert(NoticeDTO noticeDTO);

	/**
	 * 모델번호에 해당하는 레코드 삭제
	 */
	int delete(String noticeId);

	/**
	 * 모델번호에 해당하는 레코드 수정
	 */
	int update(NoticeDTO noticeDTO);


}
