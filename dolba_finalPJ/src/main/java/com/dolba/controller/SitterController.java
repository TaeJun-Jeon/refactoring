package com.dolba.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dolba.call.service.CallsService;
import com.dolba.dto.CallDTO;
import com.dolba.dto.OptionsDTO;
import com.dolba.option.service.OptionService;
import com.dolba.request.service.RequestService;
import com.dolba.sitter.service.SitterService;
import com.dolba.util.PagingUtil;

@Controller
@RequestMapping("/sitter")
public class SitterController {
	
	@Autowired
	private SitterService sitterService;
	
	@Autowired
	private RequestService requestService;
	
	@Autowired
	private OptionService optionService;
	
	@Autowired
	private CallsService callService;
	
	@RequestMapping("/call/callList")
	public ModelAndView ownerRequestlist(String[] optionSelect,String priceSelect,String pageNum) {
		List<OptionsDTO> optionList = requestService.selectAllOption();
		List<OptionsDTO> optionSelectList=null;
		List<CallDTO> callList;
		
		if(priceSelect == null || priceSelect == "") {
			callList = callService.selectAllCallList();
		}else {
			if(optionSelect != null && optionSelect.length != 0) {
				optionSelectList = optionService.selectOptionsByOptionIds(optionSelect);
			}
			callList = callService.selectCallListbyOptionPrice(optionSelect,Integer.parseInt(priceSelect));
		
		}
		/**************paging Ã³¸® ******************/
		PagingUtil pagingUtil;
		if(pageNum == null || Integer.parseInt(pageNum) <0) {
			pagingUtil = new PagingUtil(callList, 0);
			callList = pagingUtil.getCurList(0);
		}else {
			pagingUtil = new PagingUtil(callList, Integer.parseInt(pageNum));
			pageNum = Integer.toString(pagingUtil.getCurPage());
			callList = pagingUtil.getCurList(Integer.parseInt(pageNum));
		}
		
		/******************************************/
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("optionList",optionList);
		mv.addObject("callList", callList);
		mv.addObject("priceSelect",priceSelect);
		mv.addObject("optionSelectList", optionSelectList);
		mv.addObject("pagingUtil", pagingUtil);
	
		mv.setViewName("sitter/callList");
		return mv;
	}
	
}
