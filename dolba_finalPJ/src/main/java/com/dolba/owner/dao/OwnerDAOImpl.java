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
	public List<OwnerRequestDTO> allSelectOwnerRequest(String role,String userId) {
		if(role.equals("OWNER")) {
			return session.selectList("requestMapper.allSelectOwnerRequest",userId);

		}
		return session.selectList("requestMapper.allSelectSitterRequest",userId);

	}

	

	@Override
	public int updateOwnerApproval(String callId,String state) {
		Map<String, String> map = new HashMap<>();
		map.put("callId", callId);
		map.put("state", state);
		return session.update("requestMapper.updateOwnerApproval", map);
	}

	@Override
	public List<OwnerRequestDTO> allSelectOwnerRequestApproval(String role, String userId) {
		if(role.equals("OWNER")) {
			return session.selectList("requestMapper.allSelectOwnerRequestApproval",userId);

		}
		return session.selectList("requestMapper.allSelectSitterRequestApproval",userId);
	}

	@Override
	public List<CallDTO> allSelectCallApproval(String role, String userId) {
		return session.selectList("requestMapper.allSelectCallApproval");

	}

	@Override
	public PetDTO selectPetInfo(String ownerId) {
		return session.selectOne("requestMapper.selectPetInfo", ownerId);
	}

	@Override
	public OwnerDTO selectUserById(String userId) {
		return session.selectOne("requestMapper.selectUserById");
	}



	@Override
	public List<CallDTO> allSelectCallOwner(String role, String userId) {
		if(role.equals("OWNER")) {
			return session.selectList("requestMapper.allSelectCallOwner", userId);

		}
		return session.selectList("requestMapper.allSelectCallSitter", userId);
	}



	@Override
	public List<CallDTO> allSelectCallSitter(String userId) {
		return session.selectList("requestMapper.allSelectCallSitter", userId);

	}



	@Override
	public List<CallDTO> allSelectCallApprovalOwner(String userId) {
		return session.selectList("requestMapper.allSelectCallApprovalOwner", userId);
	}



	@Override
	public List<CallDTO> allSelectCallApprovalSitter(String userId) {
		return session.selectList("requestMapper.allSelectCallApprovalSitter", userId);
	}



	@Override
	public int updateSitterApproval(String callId, String state) {
		Map<String, String> map = new HashMap<>();
		map.put("callId", callId);
		map.put("state", state);
		return session.update("requestMapper.updateSitterApproval", map); 
	}



	@Override
	public OwnerDTO selectOwnerInfo(String userId) {
		return session.selectOne("ownerMapper.selectOwnerInfo", userId);
	}

}
