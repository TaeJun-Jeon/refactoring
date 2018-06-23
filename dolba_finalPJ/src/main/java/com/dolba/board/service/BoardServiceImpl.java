package com.dolba.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dolba.board.dao.BoardDAO;
import com.dolba.dto.BoardDTO;
import com.dolba.dto.ReplyDTO;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	private BoardDAO boardDAO;
	
	@Override
	public List<BoardDTO> selectAllQa(){
		return boardDAO.selectAllQa();
	}
	
	@Override
	public BoardDTO selectQaByQaId(String qaId, boolean state) {
		if(state) {
			boardDAO.addQaReadNum(qaId);
		}
		return boardDAO.selectQaByQaId(qaId);
	}
	
	@Override
	public int insertQa(BoardDTO qaDTO) {
		return boardDAO.insertQa(qaDTO);
	}
	
	@Override
	public List<BoardDTO> searchQaByKeyword(String keyField, String keyWord){
		return boardDAO.searchQaByKeyword(keyField, keyWord);
	}
	
	@Override
	public List<ReplyDTO> selectReply(String qaId){
		return boardDAO.selectReply(qaId);
	}
	
	@Override
	public int updateQa(BoardDTO boardDTO) {
		return boardDAO.updateQa(boardDTO);
	}
	
	@Override
	public int deleteQa(String qaId) {
		return boardDAO.deleteQa(qaId);
	}
}
