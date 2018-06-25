package com.dolba.request.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dolba.dto.OptionsDTO;
import com.dolba.dto.OwnerRequestDTO;

@Repository
public class RequestDAOImpl implements RequestDAO {

	@Autowired
	private SqlSession session;
	
	@Override
	public List<OptionsDTO> selectAllOption() {
		return session.selectList("requestMapper.selectAllOption");
	}

	@Override
	public void insertSitterRequest(Map<String, String> map) {
		session.insert("requestMapper.insertSitterRequest",map);
	}

	@Override
	public String selectSitterRequestCountByUserId(String userId) {
		return session.selectOne("requestMapper.selectSitterRequestCountByUserId", userId);
	}

	@Override
	public String selectOwnerRequestCountByUserId(String userId) {
		return session.selectOne("requestMapper.selectOwnerRequestCountByUserId", userId);
	}
	
	@Override
	public OwnerRequestDTO selectRequestByKey(String key) {
		
		return session.selectOne("requestMapper.selectOwnerRequest",key);
	}

	@Override
	public int updatePaymentState(String ownerRequestId, String state) {
		Map<String,String> map = new HashMap<>();
		map.put("key", ownerRequestId);
		map.put("state", state);
		return session.update("requestMapper.updateRequestPaymentState",map);
	}

}