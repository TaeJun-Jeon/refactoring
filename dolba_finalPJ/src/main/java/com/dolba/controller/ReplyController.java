package com.dolba.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dolba.admin.service.AdminService;
import com.dolba.dto.ReplyDTO;

@Controller
@RequestMapping("/reply")
public class ReplyController {
	
	@Autowired
	private AdminService service;
	
	@RequestMapping("/insertReply")
	public String insertReply(ReplyDTO replyDTO) {
		service.insertReply(replyDTO);
		return "redirect:/qa/allSelect";
	}
}
