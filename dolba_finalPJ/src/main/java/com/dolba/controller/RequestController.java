package com.dolba.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dolba.dto.OptionsDTO;
import com.dolba.dto.SitterDTO;
import com.dolba.request.service.RequestService;
import com.dolba.sitter.service.SitterService;

@Controller
@RequestMapping("/request")
public class RequestController {
	@Autowired
	private RequestService requestService;
	
	@Autowired
	private SitterService sitterService;
	
	@RequestMapping("/sitterList")
	public ModelAndView requestSitterList() {
		List<OptionsDTO> optionList = requestService.selectAllOption();
		List<SitterDTO> sitterList = sitterService.selectAllPermittedSitter();
		ModelAndView mv = new ModelAndView();
		mv.addObject("optionList",optionList);
		mv.addObject("sitterList", sitterList);
		mv.setViewName("/owner/sitterList");
		return mv;
	}
}
