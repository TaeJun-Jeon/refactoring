package com.dolba.review.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.dolba.dto.ReviewDTO;

public interface ReviewDAO {
	
	/**
	 * 레코드 전체 검색
	 */
	List<ReviewDTO> selectAll();
	
	/**
	 * 모델번호에 해당하는 레코드 검색
	 */
	ReviewDTO selectByModelNum(String reviewId);
	
	/**
	 * 모델번호에 해당하는 레코드 조회수 증가하기
	 */
	int readnumUpdate(String reviewId);

	/**
	 * 레코드 삽입
	 */
	int insert(ReviewDTO reviewDTO);

	/**
	 * 모델번호에 해당하는 레코드 삭제
	 */
	/*int delete(String reviewId,String reviewPwd);*/
	int delete(String reviewId);
	
	/**
	 * 모델번호에 해당하는 레코드 수정
	 */
	int update(ReviewDTO reviewDTO);
}
