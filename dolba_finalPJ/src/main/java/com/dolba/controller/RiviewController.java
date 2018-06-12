package com.dolba.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/review")
public class RiviewController {

	@RequestMapping("/allSelect")
	public String allSelectReview() {
		return "board/reviewList";
	}
	
	@RequestMapping("/readReview")
	public String readReview() {
		return "board/reviewRead";
	}
	
	@RequestMapping("/writeReview")
	public String writeReview() {
		return "board/reviewWrite";
	}
}
