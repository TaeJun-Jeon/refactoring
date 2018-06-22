package com.dolba.controller;

import java.io.File;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.dolba.call.service.CallsService;
import com.dolba.diary.service.DiaryService;
import com.dolba.dto.DiaryDTO;
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
	private DiaryService diaryService;
	
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
		/**************paging 처리 ******************/
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
	
	@RequestMapping("/diaryForm")
	public String diaryList() {
		return "diary/diaryWrite";
	}
	
	//일지 등록
	@RequestMapping("/insertDiary")
	public String insertDiary(MultipartHttpServletRequest mtfRequest, DiaryDTO diaryDTO) {
		
		System.out.println("controller : 제목:"+diaryDTO.getDiaryTitle());
		System.out.println("controller : 내용:"+diaryDTO.getDiaryContent());
		//System.out.println("controller : getSitterId:"+diaryDTO.getSitterId());
		//System.out.println("controller : getOwnerId:"+diaryDTO.getOwnerId());
		
		List<MultipartFile> fileList = mtfRequest.getFiles("file");
		
		String rootPath = mtfRequest.getSession().getServletContext().getRealPath("/");
		String attachPath = "resources/lib/save/";
		String fileName="";
		
		for(MultipartFile file : fileList) {
			String originFileName = file.getOriginalFilename(); //원본 파일 명
			
			fileName += originFileName+",";
			
			try {
				file.transferTo(new File(rootPath+attachPath+originFileName));
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		diaryDTO.setDiaryFname(fileName);
		
		//나중에 삭제해야함(가져와야될 값들)
		diaryDTO.setOwnerId("happymom");
		diaryDTO.setSitterId("woo");
		diaryDTO.setSittingId("OWNER_REQUEST_id-20");
		
		diaryService.insertDiary(diaryDTO);
		return null;
	}
	
}
