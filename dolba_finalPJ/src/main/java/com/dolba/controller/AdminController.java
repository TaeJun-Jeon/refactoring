package com.dolba.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.dolba.admin.service.AdminService;
import com.dolba.dto.OwnerDTO;
import com.dolba.dto.SitterDTO;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	private AdminService adminService;

	@RequestMapping("/joinForm")
	public String joinForm() {

		return "join/joinForm";
	}
	
	@Autowired
	private JavaMailSender mailSender;
	

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
			file.transferTo(new File(rootPath + attachPath + file.getOriginalFilename()));
		}
		adminService.joinOwner(ownerDTO);
		return "redirect:/";
	}

	@RequestMapping(value = "/joinSitter", produces = { "text/html;charset=utf-8" })
	public String joinSitter(SitterDTO sitterDTO, MultipartFile[] file1, HttpServletRequest request)
			throws IllegalStateException, IOException {
		String rootPath = request.getSession().getServletContext().getRealPath("/");
		String attachPath = "resources/lib/save1/";
		String certifyPath = "resources/lib/certify/";
		sitterDTO.setSitterEmail(sitterDTO.getSitterEmail1() + "@" + sitterDTO.getSitterEmail2());

		MultipartFile[] file = sitterDTO.getFile1();
		List<String> list = new ArrayList<>();
		if(file.length>0) {
			for(MultipartFile file2 : file) {
				list.add(file2.getOriginalFilename());
			}
		
			sitterDTO.setSitterFname(list.get(0));
			System.out.println(list.get(0));
			sitterDTO.setCertificationFname(list.get(1));
			System.out.println(list.get(1));

			file1[0].transferTo(new File(rootPath + attachPath + list.get(0)));
			file1[1].transferTo(new File(rootPath + certifyPath + list.get(1)));
			
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

	/**
	 * 이메일 api
	 */
	private String randomNum() {
		StringBuffer buffer = new StringBuffer();

		for (int i = 0; i <= 6; i++) {
			int n = (int) (Math.random() * 10);
			buffer.append(n);
		}

		return buffer.toString();
	}

	public void sendEmail(String email, String authNum) {
		//이메일 발송 메소드

		System.out.println(authNum);

		SimpleMailMessage mailMessage = new SimpleMailMessage();
		mailMessage.setSubject("[이메일 제목] 회원가입 안내 .");
		mailMessage.setFrom("hanjoon12@naver.com");
		mailMessage.setText("[이메일 내용]회원가입을 환영합니다. 인증번호를 확인해주세요. [ " + authNum + " ]");
		mailMessage.setTo(email);
		try {
			mailSender.send(mailMessage);
		} catch (Exception e) {
			System.out.println(e);
		}
	}

	@RequestMapping(value = "/emailAuth", produces = "text/plain;charset=utf-8")
	@ResponseBody
	public String emailAuth(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();

		String email = request.getParameter("email");
		String authNum = "";

		System.out.println(email);
		authNum = randomNum();
		//가입승인에 사용될 인증키 난수 발생    
		sendEmail(email, authNum);
		//이메일전송
		String str = authNum;

		return str;
	}
	
	@RequestMapping("/adminSitterList")
	public String adminSitterList(Model model) {
		List<SitterDTO> list=  adminService.adminselectSitterList();
		model.addAttribute("sitterList", list);
		return "admin/adminSitterList";
	}
	
	@RequestMapping("/downLoad")
	public ModelAndView downLoad(String fName, HttpServletRequest request) {
		String rootPath = request.getSession().getServletContext().getRealPath("/");
		String attachPath = "resources/lib/certify/"; 
		return new ModelAndView("downLoadView", "fname", new File(rootPath+attachPath+fName));
	}
	
	@RequestMapping("/updateSitterPermit")
	@ResponseBody
	public int updateSitterPermit(String sitterId,String state) {
		return adminService.updateSitterPermit(sitterId,state);
	}
}
