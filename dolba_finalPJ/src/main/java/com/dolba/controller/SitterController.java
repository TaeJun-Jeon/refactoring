package com.dolba.controller;

import java.io.File;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.dolba.diary.service.DiaryService;
import com.dolba.dto.DiaryDTO;
import com.dolba.sitter.service.SitterService;

@Controller
@RequestMapping("/sitter")
public class SitterController {
	
	@Autowired
	private SitterService sitterService;
	
	@Autowired
	private DiaryService diaryService;
	
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
	
	//돌보기에서 일지 등록
}
