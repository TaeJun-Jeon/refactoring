package com.dolba.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/qa")
public class QaController {

	@RequestMapping("/allSelect")
	public String allSelectQa() {
		
		return "board/qaList";
	}
	
	@RequestMapping("/readQa")
	public String readQa() {
		
		return "board/qaRead";
	}
	
	@RequestMapping("/writeQa")
	public String writeQa() {
		
		return "board/qaWrite";
	}
}
