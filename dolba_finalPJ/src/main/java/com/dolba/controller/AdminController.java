package com.dolba.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.filefilter.FileFileFilter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.dolba.admin.service.AdminService;
import com.dolba.dto.OwnerDTO;
import com.dolba.dto.SitterDTO;
import com.dolba.dto.SitterMultiFilesDTO;


@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	private AdminService adminService;

	@RequestMapping("/joinForm")
	public String joinForm() {

		return "join/joinForm";
	}

	@RequestMapping(value = "/joinOwner", produces = { "text/html;charset=utf-8" })
	public String joinOwner(OwnerDTO ownerDTO, MultipartFile file, HttpServletRequest request) throws IllegalStateException, IOException {

		String rootPath = request.getSession().getServletContext().getRealPath("/");
		String attachPath = "resources/lib/save/";
	
		
		ownerDTO.setOwnerEmail(ownerDTO.getOwnerEmail1() + "@" + ownerDTO.getOwnerEmail2());

		file = ownerDTO.getFile();
		if (file.getSize() > 0) {
			String fileName = file.getOriginalFilename();
			ownerDTO.setOwnerfName(fileName);
			System.out.println(fileName);
			file.transferTo(new File(rootPath+attachPath + file.getOriginalFilename()));
		}
		adminService.joinOwner(ownerDTO);
		return "redirect:/";
	}

	@RequestMapping(value= "/joinSitter",  produces = { "text/html;charset=utf-8" })
	public String joinSitter(SitterDTO sitterDTO,MultipartFile file1, SitterMultiFilesDTO sitterMultiFilesDTO, HttpServletRequest request) throws IllegalStateException, IOException {
		String rootPath = request.getSession().getServletContext().getRealPath("/");
		String attachPath = "resources/lib/save/";
		sitterDTO.setSitterEmail(sitterDTO.getSitterEmail1() + "@" + sitterDTO.getSitterEmail2());

		for(MultipartFile file: sitterMultiFilesDTO.getFile1()) {
			System.out.println("fileName="+file.getOriginalFilename());
			
			file.transferTo(new File(rootPath+attachPath+file.getOriginalFilename()));
		}
		
		
		adminService.joinSitter(sitterDTO);
		return "redirect:/";
	}

	@RequestMapping("/idcheck")
	@ResponseBody
	public String idCheck(String userId) {
		System.out.println("id=" + userId);
		return adminService.idCheck(userId);
	}

}
