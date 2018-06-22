package com.dolba.review.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dolba.dto.ReviewDTO;

@Repository
public class ReviewDAOImpl implements ReviewDAO {
	
	@Autowired
	private SqlSession session;

	@Override
	public List<ReviewDTO> selectAll() {
		return session.selectList("reviewMapper.selectAll");
	}

	@Override
	public ReviewDTO selectByModelNum(String reviewId) {
		return session.selectOne("reviewMapper.selectByModelNum", reviewId);
	}

	@Override
	public int readnumUpdate(String reviewId) {
		return session.update("reviewMapper.readnumUpdate",reviewId);
	}

	@Override
	public int insert(ReviewDTO reviewDTO) {
		return session.insert("reviewMapper.insert", reviewDTO);
	}

	/*@Override
	public int delete(String reviewId,String reviewPwd) {
		Map<String, String> map = new HashMap<>();
		map.put("reviewId", reviewId);
		map.put("reviewPwd", reviewPwd);
		return session.delete("reviewMapper.delete", map);
	}*/
	
	@Override
	public int delete(String reviewId) {
		return session.delete("reviewMapper.delete",reviewId);
	}

	@Override
	public int update(ReviewDTO reviewDTO) {
		return session.update("reviewMapper.update",reviewDTO);
	}

}
