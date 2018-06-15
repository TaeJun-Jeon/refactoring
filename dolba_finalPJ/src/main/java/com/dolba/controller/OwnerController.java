package com.dolba.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.dolba.dto.OptionsDTO;
import com.dolba.dto.OwnerRequestDTO;
import com.dolba.dto.SitterDTO;
import com.dolba.dto.SitterOptionDTO;
import com.dolba.owner.service.OwnerService;
import com.dolba.request.service.RequestService;
import com.dolba.sitter.service.SitterService;

@Controller
@RequestMapping("/owner")
public class OwnerController {
	
	@Autowired
	private OwnerService ownerService;
	
	@Autowired
	private RequestService requestService;
	
	@Autowired
	private SitterService sitterService;
	
	
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
	public ModelAndView requestSitterList() {
		List<OptionsDTO> optionList = requestService.selectAllOption();
		List<SitterDTO> sitterList = sitterService.selectAllPermittedSitter();
		ModelAndView mv = new ModelAndView();
		mv.addObject("optionList",optionList);
		mv.addObject("sitterList", sitterList);
		/*for(SitterDTO sitterdto : sitterList) {
			System.out.println("-----------------------------");
			System.out.println(sitterdto.getSitterName());
			for(SitterOptionDTO sitteroptionDTO : sitterdto.getSitterOptionDTO()) {
				System.out.println(sitteroptionDTO.getOptionsDTO().getOptionName());
			}
			System.out.println("-----------------------------");
			
		}*/
		mv.setViewName("/owner/sitterList");
		return mv;
	}
	
	
}
