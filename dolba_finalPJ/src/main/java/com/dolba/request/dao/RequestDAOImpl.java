package com.dolba.request.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dolba.dto.OptionsDTO;

@Repository
public class RequestDAOImpl implements RequestDAO {

	@Autowired
	private SqlSession session;
	
	@Override
	public List<OptionsDTO> selectAllOption() {
		return session.selectList("requestMapper.selectAllOption");
	}

}
