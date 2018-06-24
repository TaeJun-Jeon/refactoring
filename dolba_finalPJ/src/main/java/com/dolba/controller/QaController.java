package com.dolba.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dolba.board.service.BoardService;
import com.dolba.dto.BoardDTO;
import com.dolba.dto.ReplyDTO;

@Controller
@RequestMapping("/qa")
public class QaController {

	@Autowired
	private BoardService service;
	
	@RequestMapping("/allSelect")
	public ModelAndView allSelectQa() {
		ModelAndView mv = new ModelAndView();
		List<BoardDTO> list=service.selectAllQa();
		mv.addObject("list", list);
		mv.setViewName("board/qaList");
		
		return mv;
	}
	
	@RequestMapping("/readQa")
	public ModelAndView readQa(String qaId) {
		ModelAndView mv = new ModelAndView();
		BoardDTO qaDTO = service.selectQaByQaId(qaId,true);
		List<ReplyDTO> replyList = service.selectReply(qaId);
		mv.addObject("replyList", replyList);
		mv.addObject("qaDTO", qaDTO);
		mv.setViewName("board/qaRead");
		return mv;
	}
	
	@RequestMapping("/writeQaForm")
	public String writeQaForm() {
		return "board/qaWrite";
	}
	
	@RequestMapping("/writeQa")
	public String writeQa(BoardDTO qaDTO) {
		service.insertQa(qaDTO);
		return "redirect:/qa/allSelect";
	}
	
	@RequestMapping("/searchQa")
	public ModelAndView selectQaByKeyword(HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		String keyField=request.getParameter("keyField");
		String keyWord=request.getParameter("keyWord");
		
		List<BoardDTO> list=service.searchQaByKeyword(keyField, keyWord);
		
		mv.addObject("list", list);
		mv.setViewName("board/qaList");
		return mv;
	}
	
	@RequestMapping("/updateQaForm")
	public ModelAndView updateQaForm(String qaId) {
		ModelAndView mv = new ModelAndView();
		BoardDTO boardDTO = service.selectQaByQaId(qaId, false);
		mv.addObject("boardDTO", boardDTO);
		mv.setViewName("board/qaUpdate");
		return mv;
	}
	
	@RequestMapping("/updateQa")
	public String updateQa(BoardDTO boardDTO) {
		service.updateQa(boardDTO);
		return "redirect:/qa/allSelect";
	}
	
	@RequestMapping("/deleteQa")
	public String deleteQa(String qaId) {
		service.deleteQa(qaId);
		return "redirect:/qa/allSelect";
	}
}
