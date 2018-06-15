package com.dolba.owner.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dolba.dto.CallDTO;
import com.dolba.dto.OwnerDTO;
import com.dolba.dto.OwnerRequestDTO;
import com.dolba.dto.PetDTO;

@Repository
public class OwnerDAOImpl implements OwnerDAO {

	@Autowired
	private SqlSession session;
	
	@Override
	public List<OwnerRequestDTO> allSelectOwnerRequest() {
		return session.selectList("requestMapper.allSelectOwnerRequest");
	}

	@Override
	public List<CallDTO> allSelectCall() {
		return session.selectList("requestMapper.allSelectCall");
	}

	@Override
	public int updateOwnerApproval(String callId,String state) {
		Map<String, String> map = new HashMap<>();
		map.put("callId", callId);
		map.put("state", state);
		return session.update("requestMapper.updateOwnerApproval", map);
	}

	@Override
	public List<OwnerRequestDTO> allSelectOwnerRequestApproval() {
		return session.selectList("requestMapper.allSelectOwnerRequestApproval");
	}

	@Override
	public List<CallDTO> allSelectCallApproval() {
		return session.selectList("requestMapper.allSelectCallApproval");

	}

	@Override
	public PetDTO selectPetInfo(String ownerId) {
		return session.selectOne("requestMapper.selectPetInfo", ownerId);
	}

	@Override
	public OwnerDTO selectMemberById(String userId) {
		return session.selectOne("requestMapper.selectById");
	}

}
