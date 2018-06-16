package com.dolba.sitter.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dolba.dto.SitterDTO;
import com.dolba.dto.SitterOptionDTO;

@Repository
public class SitterDAOImpl implements SitterDAO {
	@Autowired
	private SqlSession session;

	@Override
	public List<SitterDTO> selectAllSitter() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<SitterDTO> selectAllPermittedSitter() {
		return session.selectList("sitterMapper.selectAllPermittedSitter");
	}

	@Override
	public List<SitterDTO> selectAllWaitingSitter() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<SitterOptionDTO> selectSitterOptions(String sitterId) {
		return session.selectList("sitterMapper.selectSitterOption", sitterId);
	}
	
}
