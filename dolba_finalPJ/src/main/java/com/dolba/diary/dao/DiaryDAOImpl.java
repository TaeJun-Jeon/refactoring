package com.dolba.diary.dao;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dolba.dto.CallDTO;
import com.dolba.dto.DiaryDTO;
import com.dolba.dto.OwnerRequestDTO;

@Repository
public class DiaryDAOImpl implements DiaryDAO {
	
	@Autowired
	private SqlSession session;
	
	@Override
	public int insertDiary(DiaryDTO diaryDTO) {
		return session.insert("diaryMapper.insertDiary", diaryDTO);
	}
	
	@Override
	public List<DiaryDTO> selectDiaryByCall(String sittingId){
		return session.selectList("diaryMapper.selectDiaryByCall", sittingId);
	}
	
	@Override
	public String selectSitterFnameByCall(String sittingId) {
		return session.selectOne("diaryMapper.selectSitterFnameByCall", sittingId);
	}
	
	@Override
	public List<DiaryDTO> selectDiaryByRequest(String sittingId){
		return session.selectList("diaryMapper.selectDiaryByRequest", sittingId);
	}
	
	@Override
	public String selectSitterFnameByRequest(String sittingId) {
		return session.selectOne("diaryMapper.selectSitterFnameByRequest", sittingId);
	}
}
