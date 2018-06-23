package com.dolba.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dolba.board.dao.QaDAO;
import com.dolba.dto.QaDTO;
import com.dolba.dto.ReplyDTO;

@Service
public class QaServiceImpl implements QaService{
	
	@Autowired
	private QaDAO boardDAO;
	
	@Override
	public List<QaDTO> selectAllQa(){
		return boardDAO.selectAllQa();
	}
	
	@Override
	public QaDTO selectQaByQaId(String QAId) {
		return boardDAO.selectQaByQaId(QAId);
	}
	
	@Override
	public int insertQa(QaDTO qaDTO) {
		return boardDAO.insertQa(qaDTO);
	}
	
	@Override
	public List<QaDTO> searchQaByKeyword(String keyField, String keyWord){
		return boardDAO.searchQaByKeyword(keyField, keyWord);
	}
	
	@Override
	public List<ReplyDTO> selectReply(String qaId){
		return boardDAO.selectReply(qaId);
	}
}
