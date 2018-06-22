package com.dolba.call.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dolba.dto.CallDTO;
import com.dolba.dto.SittingOptionDTO;

@Repository
public class CallDAOImpl implements CallDAO {

	@Autowired
	private SqlSession session;
	
	@Override
	public List<CallDTO> selectAllCallList() {
		return session.selectList("callMapper.selectAllCallWaiting");
	}

	@Override
	public List<CallDTO> selectCallListbyOption(List<String> opsList) {
		return session.selectList("callMapper.selectCallByOption", opsList);
	}

	@Override
	public List<SittingOptionDTO> selectSittingOptions(String callId) {
		return session.selectList("sittingOptionMapper.selectSittingOptions",callId);
	}

	@Override
	public List<CallDTO> selectCallListByOptionPrice(List<String> opsList, int price) {
		Map<String, Object> map = new HashMap<>();
		map.put("opsList",opsList);
		map.put("price",price);
		return session.selectList("callMapper.selectCallByOption", map);
	}
	
	
	
	
}
