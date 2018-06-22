package com.dolba.admin.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dolba.dto.OwnerDTO;
import com.dolba.dto.ReplyDTO;
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
	public int insertReply(ReplyDTO replyDTO) {
		return session.insert("adminMapper.insertReply", replyDTO);
	}

}
