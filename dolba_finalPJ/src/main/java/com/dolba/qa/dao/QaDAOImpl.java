package com.dolba.qa.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dolba.dto.QaDTO;
import com.dolba.dto.ReplyDTO;

@Repository
public class QaDAOImpl implements QaDAO {
	
	@Autowired
	private SqlSession session;
	
	@Override
	public List<QaDTO> selectAllQa(){
		return session.selectList("qaMapper.selectAllQa",null);
	}
	
	@Override
	public QaDTO selectQaByQaId(String QAId) {
		return session.selectOne("qaMapper.selectAllQa", QAId);
	}
	
	@Override
	public int insertQa(QaDTO qaDTO) {
		return session.insert("qaMapper.insertQa", qaDTO);
	}
	
	@Override
	public List<QaDTO> searchQaByKeyword(String keyField, String keyWord){
		Map<String, String> map = new HashMap<>();
		map.put("keyField", keyField);
		map.put("keyWord", keyWord);
		return session.selectList("qaMapper.searchQaByKeyword", map);
	}
	
	@Override
	public List<ReplyDTO> selectReply(String qaId){
		return session.selectList("qaMapper.selectReplyByQa", qaId);
	}
}
