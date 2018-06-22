package com.dolba.admin.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dolba.dto.OwnerDTO;
import com.dolba.dto.SitterDTO;

@Repository
public class AdminDAOImpl implements AdminDAO {

	@Autowired
	private SqlSession session;
	
	@Override
	public int joinOwner(OwnerDTO ownerDTO) {
		return session.insert("adminMapper.joinOwner", ownerDTO);
	}

	@Override
	public int joinSitter(SitterDTO sitterDTO) {
		return session.insert("adminMapper.joinSitter", sitterDTO);
	}


	@Override
	public int idCheck(String userId) {
		return session.selectOne("authorityMapper.idCheck", userId);

	}

	@Override
	public List<SitterDTO> adminselectSitterList() {
		return session.selectList("adminMapper.adminSelectSitterList");
	}

	@Override
	public int updateSitterPermit(String sitterId, String state) {
		Map<String, String> map = new HashMap<>();
		map.put("sitterId", sitterId);
		map.put("state", state);
		
		return session.update("adminMapper.updateSitterPermit",map);
	}

}
