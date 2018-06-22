package com.dolba.option.dao;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dolba.dto.OptionsDTO;

@Repository
public class OptionDAOImpl implements OptionDAO{

	@Autowired
	private SqlSession session;
	
	@Override
	public OptionsDTO selectOptionByOptionId(String id) {
		return session.selectOne("optionMapper.selectOpByoptionId",id);
	}
	
}
