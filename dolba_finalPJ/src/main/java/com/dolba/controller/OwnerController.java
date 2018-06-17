package com.dolba.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.dolba.dto.CallDTO;
import com.dolba.dto.OptionsDTO;
import com.dolba.dto.OwnerDTO;
import com.dolba.dto.OwnerRequestDTO;
import com.dolba.dto.PetDTO;
import com.dolba.dto.SitterDTO;
import com.dolba.dto.SitterOptionDTO;
import com.dolba.owner.service.OwnerService;
import com.dolba.request.service.RequestService;
import com.dolba.sitter.service.SitterService;
import com.dolba.util.PagingUtil;

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
	public String myPage(Model md, String role, String userId) {
		String root ="myPage/myPage";
		if(role.equals("SITTER")) {
			SitterDTO sitterDTO = sitterService.selectSitterInfo(userId);
			md.addAttribute("sitterDTO", sitterDTO);
			root ="myPage/sitterPage";
		}else {
			OwnerDTO ownerDTO = ownerService.selectOwnerInfo(userId);
			md.addAttribute("ownerDTO", ownerDTO);
			System.out.println("ownerName"+ownerDTO.getOwnerName());
		}
		return root;
	}
	
	@RequestMapping("/callForm")
	public String callForm() {
		return "owner/callForm";
	}
	
	@RequestMapping("/callRead")
	public String callRead() {
		return "owner/ownerCallRead";
	}
	
	@RequestMapping("/allSelectOwnerRequest")
	@ResponseBody
	public List<OwnerRequestDTO> allSelectOwnerRequest(String role, String userId) {
		return ownerService.allSelectOwnerRequest(role,userId);
	}
	
	@RequestMapping("/allSelectOwnerRequestApproval")
	@ResponseBody
	public List<OwnerRequestDTO> allSelectOwnerRequestApproval(String role, String userId) {
		System.out.println("approle="+role);
		return ownerService.allSelectOwnerRequestApproval(role, userId);
	}
	
	@RequestMapping("/allSelectCall")
	@ResponseBody
	public List<CallDTO> allSelectCall(String role, String userId){
		return ownerService.allSelectCall(role,userId);
	}
	
	@RequestMapping("/allSelectCallApproval")
	@ResponseBody
	public List<CallDTO> allSelectCallApproval(String role,String userId){
		System.out.println("approvalrole="+role);
		return ownerService.allSelectCallApproval(role, userId);
	}
	
	@RequestMapping("/updateOwnerApproval")
	@ResponseBody
	public int updateOwnerApproval(String callId, String state) {
		return ownerService.updateOwnerApproval(callId,state);
	}
	
	@RequestMapping("/updateSitterApproval")
	@ResponseBody
	public int updateSitterApproval(String callId,String state) {
		return ownerService.updateSitterApproval(callId,state);
	}
	
	@RequestMapping("/selectPetInfo")
	@ResponseBody
	public PetDTO selectPetInfo(String ownerId) {
		return ownerService.selectPetInfo(ownerId);
		
	}
	
	@RequestMapping("/request/sitterList")
	public ModelAndView requestSitterList(String pageNum) {
		List<OptionsDTO> optionList = requestService.selectAllOption();
		List<SitterDTO> sitterList = sitterService.selectAllPermittedSitter();
		PagingUtil pagingUtil;
		if(pageNum == null || Integer.parseInt(pageNum) <0) {
			pagingUtil = new PagingUtil(sitterList, 0);
			sitterList = pagingUtil.getCurList(0);
		}else {
			pagingUtil = new PagingUtil(sitterList, Integer.parseInt(pageNum));
			pageNum = Integer.toString(pagingUtil.getCurPage());
			sitterList = pagingUtil.getCurList(Integer.parseInt(pageNum));
		}
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("optionList",optionList);
		mv.addObject("sitterList", sitterList);
		mv.addObject("pagingUtil", pagingUtil);
		System.out.println("startPage="+pagingUtil.getStartPage()+"endPage="+pagingUtil.getEndPage());
		/*for(SitterDTO sitterdto : sitterList) {
			System.out.println("-----------------------------");
			System.out.println(sitterdto.getSitterName());
			for(SitterOptionDTO sitteroptionDTO : sitterdto.getSitterOptionDTO()) {
				System.out.println(sitteroptionDTO.getOptionsDTO().getOptionName());
			}
			System.out.println("-----------------------------");
			
		}*/
		mv.setViewName("owner/sitterList");
		return mv;
	}
}
