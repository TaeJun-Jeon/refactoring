package com.dolba.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dolba.dto.OwnerRequestDTO;
import com.dolba.owner.service.OwnerService;

@Controller
@RequestMapping("/owner")
public class OwnerController {
	
	@Autowired
	private OwnerService ownerService;
	
	@RequestMapping("/myPage")
	public String myPage() {
		return "/myPage/myPage";
	}
	
	@RequestMapping("/callForm")
	public String callForm() {
		return "/owner/callForm";
	}
	
	@RequestMapping("/callRead")
	public String callRead() {
		return "/owner/ownerCallRead";
	}
	
	@RequestMapping("/allSelect")
	@ResponseBody
	public List<OwnerRequestDTO> allSelectOwnerRequest() {
		List<OwnerRequestDTO> requestList = ownerService.allSelectOwnerRequest();
		return requestList;
	}
	
	@RequestMapping("/request/sitterList")
	public String requestSitterList() {
		return "/owner/sitterList";
	}
}
