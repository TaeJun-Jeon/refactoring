package com.dolba.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dolba.dto.CallDTO;
import com.dolba.dto.OwnerRequestDTO;
import com.dolba.dto.PetDTO;
import com.dolba.owner.service.OwnerService;import com.sun.beans.util.Cache;

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
	
	@RequestMapping("/allSelectOwnerRequest")
	@ResponseBody
	public List<OwnerRequestDTO> allSelectOwnerRequest() {
		return ownerService.allSelectOwnerRequest();
	}
	
	@RequestMapping("/allSelectOwnerRequestApproval")
	@ResponseBody
	public List<OwnerRequestDTO> allSelectOwnerRequestApproval() {
		return ownerService.allSelectOwnerRequestApproval();
	}
	
	@RequestMapping("/allSelectCall")
	@ResponseBody
	public List<CallDTO> allSelectCall(){
		return ownerService.allSelectCall();
	}
	
	@RequestMapping("/allSelectCallApproval")
	@ResponseBody
	public List<CallDTO> allSelectCallApproval(){
		return ownerService.allSelectCallApproval();
	}
	
	@RequestMapping("/updateOwnerApproval")
	@ResponseBody
	public int updateOwnerApproval(String callId, String state) {
		return ownerService.updateOwnerApproval(callId,state);
	}
	
	@RequestMapping("/selectPetInfo")
	@ResponseBody
	public PetDTO selectPetInfo(String ownerId) {
		return ownerService.selectPetInfo(ownerId);
		
	}
}
