package com.dolba.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/notice")
public class NoticeController {

	@RequestMapping("/allSelect")
	public String allSelectNotice() {
		
		return "notice/noticeList";
	}
	
	@RequestMapping("/readNotice")
	public String readNotice() {
		
		return "notice/noticeRead";
	}
	
	@RequestMapping("/writeNotice")
	public String writeNotice() {
		
		return "notice/noticeWrite";
	}
}
