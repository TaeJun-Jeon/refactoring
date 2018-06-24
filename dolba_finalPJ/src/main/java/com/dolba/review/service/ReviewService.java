package com.dolba.review.service;

import java.util.List;

import com.dolba.dto.ReviewDTO;

public interface ReviewService {
	/**
	 * 레코드 전체 검색
	 */
	List<ReviewDTO> selectAll();

	/**
	 * 모델번호에 해당하는 레코드 검색
	 * 
	 * @param: state
	 *             true이면 조회수증가, false이면 조회증가안함.
	 */
	ReviewDTO selectByModelNum(String reviewId, boolean state);

	/**
	 * 레코드 삽입
	 */
	int insert(ReviewDTO reviewDTO);

	/**
	 * 모델번호에 해당하는 레코드 삭제
	 */
	/*int delete(String reviewId, String reviewPwd);*/
	int delete(String reviewId);

	/**
	 * 모델번호에 해당하는 레코드 수정
	 */
	int update(ReviewDTO reviewDTO);
}
