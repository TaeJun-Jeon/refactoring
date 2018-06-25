package com.dolba.diary.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dolba.diary.dao.DiaryDAO;
import com.dolba.dto.CallDTO;
import com.dolba.dto.DiaryDTO;
import com.dolba.dto.OwnerRequestDTO;

@Service
public class DiaryServiceImpl implements DiaryService {
	
	@Autowired
	private DiaryDAO diaryDAO;
	
	@Override
	public int insertDiary(DiaryDTO diaryDTO) {
		return diaryDAO.insertDiary(diaryDTO);
	}
	
	@Override
	public List<DiaryDTO> selectDiaryByCall(String sittingId){
		return diaryDAO.selectDiaryByCall(sittingId);
	}
	
	@Override
	public String selectSitterFnameByCall(String sittingId) {
		return diaryDAO.selectSitterFnameByCall(sittingId);
	}
	
	@Override
	public List<DiaryDTO> selectDiaryByRequest(String sittingId){
		return diaryDAO.selectDiaryByRequest(sittingId);
	}

	@Override
	public String selectSitterFnameByRequest(String sittingId) {
		return diaryDAO.selectSitterFnameByRequest(sittingId);
	}
	
}
