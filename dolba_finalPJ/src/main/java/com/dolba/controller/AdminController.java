package com.dolba.controller;

import java.io.File;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.dolba.admin.service.AdminService;
import com.dolba.dto.OwnerDTO;
import com.dolba.dto.SitterDTO;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	private String savePath="D:\\FinalProjectFileUpload";
	
	@RequestMapping("/joinForm")
	public String joinForm() {
		
		return "join/joinForm";
	}
	
	@RequestMapping(value="/joinOwner",produces= {"text/html;charset=utf-8"})
	public String joinOwner(OwnerDTO ownerDTO) throws Exception {
		
		MultipartFile file = ownerDTO.getFile();
		if(file.getSize()>0) {
			String fileName = file.getOriginalFilename();
			ownerDTO.setOwnerfName(fileName);
			
			file.transferTo(new File(savePath + "/" + fileName));
		}
		
		ownerDTO.setOwnerEmail(ownerDTO.getOwnerEmail1()+"@"+ownerDTO.getOwnerEmail2());
		adminService.joinOwner(ownerDTO);
		
		return "redirect:/";
	}
	
	@RequestMapping("/joinSitter")
	public String joinSitter(SitterDTO sitterDTO) {
		adminService.joinSitter(sitterDTO);
		return "/";
	}

}
