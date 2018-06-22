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
	public List<DiaryDTO> selectDiaryByCall(CallDTO callDTO){
		return session.selectList("diaryMapper.selectDiaryByCall", callDTO);
	}
	
	@Override
	public String selectSitterFnameByCall(CallDTO callDTO) {
		return session.selectOne("diaryMapper.selectSitterFnameByCall", callDTO);
	}
	
	@Override
	public List<DiaryDTO> selectDiaryByRequest(OwnerRequestDTO ownerRequestDTO){
		return session.selectList("diaryMapper.selectDiaryByRequest", ownerRequestDTO);
	}
	
	@Override
	public String selectSitterFnameByRequest(OwnerRequestDTO ownerRequestDTO) {
		return session.selectOne("diaryMapper.selectSitterFnameByRequest", ownerRequestDTO);
	}
}
