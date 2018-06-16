package com.dolba.authority.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dolba.dto.AuthorityDTO;

@Repository
public class AuthoritiesDAOImpl implements AuthoritiesDAO {

	@Autowired
	private SqlSession session;
	
	public AuthoritiesDAOImpl() {}
	@Override
	public int insertAuthority(AuthorityDTO authority) {
		return session.insert("authorityMapper.insertAuthority",authority);
		
	}

	@Override
	public AuthorityDTO selectAuthorityByUserId(String userId) {
		return session.selectOne("authorityMapper.selectAuthority", userId);
	}


}
