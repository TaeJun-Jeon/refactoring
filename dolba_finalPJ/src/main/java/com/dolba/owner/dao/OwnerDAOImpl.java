package com.dolba.owner.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dolba.dto.OwnerRequestDTO;

@Repository
public class OwnerDAOImpl implements OwnerDAO {

	@Autowired
	private SqlSession session;
	
	@Override
	public List<OwnerRequestDTO> allSelectOwnerRequest() {
		return session.selectList("requestMapper.allSelectOwnerRequest");
	}

}
