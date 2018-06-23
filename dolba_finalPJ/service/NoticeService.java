package com.dolba.notice.service;

import java.util.List;

import com.dolba.dto.NoticeDTO;

public interface NoticeService {
	/**
	 * 레코드 전체 검색
	 */
	List<NoticeDTO> selectAll();

	/**
	 * 모델번호에 해당하는 레코드 검색
	 * 
	 * @param: state
	 *             true이면 조회수증가, false이면 조회증가안함.
	 */
	NoticeDTO selectByModelNum(String noticeId, boolean state);

	/**
	 * 모델번호에 해당하는 레코드 수정
	 */
	int update(NoticeDTO noticeDTO);

	/**
	 * 모델번호에 해당하는 레코드 삭제
	 */
	int delete(String noticeId);

	/**
	 * 레코드 삽입
	 */
	int insert(NoticeDTO noticeDTO);
}
