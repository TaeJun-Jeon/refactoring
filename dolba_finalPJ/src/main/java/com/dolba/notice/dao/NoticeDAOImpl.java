package com.dolba.notice.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dolba.dto.NoticeDTO;

@Repository
public class NoticeDAOImpl implements NoticeDAO {
	
	@Autowired
	private SqlSession session;
	

	@Override
	public List<NoticeDTO> selectAll() {
		return session.selectList("noticeMapper.selectAll");
	}

	@Override
	public NoticeDTO selectByModelNum(String noticeId) {
		return session.selectOne("noticeMapper.selectByModelNum", noticeId);
	}

	@Override
	public int readnumUpdate(String noticeId) {
		return session.update("noticeMapper.readnumUpdate",noticeId);
	}

	@Override
	public int insert(NoticeDTO noticeDTO) {
		return session.insert("noticeMapper.insert", noticeDTO);
	}

	@Override
	public int delete(String noticeId) {
		return session.delete("noticeMapper.delete",noticeId);
	}

	@Override
	public int update(NoticeDTO noticeDTO ) {
		return session.update("noticeMapper.update",noticeDTO);
	}

}
