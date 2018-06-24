package com.dolba.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.dolba.call.service.CallsService;
import com.dolba.dto.CallDTO;
import com.dolba.dto.OptionsDTO;
import com.dolba.dto.OwnerDTO;
import com.dolba.dto.OwnerRequestDTO;
import com.dolba.dto.PetDTO;
import com.dolba.dto.SitterDTO;
import com.dolba.dto.SitterImgDTO;
import com.dolba.dto.SitterOptionDTO;
import com.dolba.dto.SitterReviewDTO;
import com.dolba.option.service.OptionService;
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
	private SitterService sitterService;

	@Autowired
	private RequestService requestService;

	@Autowired
	private CallsService callService;

	@Autowired
	private OptionService optionService;
	

	@RequestMapping("/myPage")
	public String myPage(Model md, String role, String userId) {
		String root = "myPage/myPage";
		if (role.equals("SITTER")) {
			SitterDTO sitterDTO = sitterService.selectSitterInfo(userId);
			md.addAttribute("sitterDTO", sitterDTO);
			root = "myPage/sitterPage";
		} else {
			OwnerDTO ownerDTO = ownerService.selectOwnerInfo(userId);
			md.addAttribute("ownerDTO", ownerDTO);
			System.out.println("ownerName" + ownerDTO.getOwnerName());
		}
		return root;
	}

	/***************************CALL ************************************/
	@RequestMapping("/call/callForm")
	public ModelAndView callForm(String ownerId) {
		OwnerDTO ownerDTO = ownerService.selectOwnerInfo(ownerId);
		PetDTO petDTO = ownerService.selectPetInfo(ownerId);
		List<OptionsDTO> optionList = requestService.selectAllOption();
		ModelAndView mv = new ModelAndView();
		mv.addObject("optionList", optionList);
		mv.addObject("ownerDTO", ownerDTO);
		mv.addObject("petDTO", petDTO);
		mv.setViewName("owner/callForm");

		return mv;
	}

	@RequestMapping("/call/insertCall")
	public ModelAndView insertCall(CallDTO callDTO, String[] optionSelect, String ownerId) {
		List<OptionsDTO> optionSelectList = null;
		if (optionSelect.length != 0) {
			optionSelectList = optionService.selectOptionsByOptionIds(optionSelect);
		}
		OwnerDTO ownerDTO = new OwnerDTO();
		ownerDTO.setOwnerId(ownerId);
		callDTO.setOwnerDTO(ownerDTO);
		callService.insertCall(callDTO,optionSelect);

		ModelAndView mv = new ModelAndView();
		//mv.setViewName("redirect:/owner/call/callForm?ownerId=" + ownerId);
		mv.setViewName("redirect:/admin");

		return mv;
	}

	/***************************CALL ************************************/

	@RequestMapping("/allSelectOwnerRequest")
	@ResponseBody
	public List<OwnerRequestDTO> allSelectOwnerRequest(String role, String userId) {
		return ownerService.allSelectOwnerRequest(role, userId);
	}

	@RequestMapping("/allSelectOwnerRequestApproval")
	@ResponseBody
	public List<OwnerRequestDTO> allSelectOwnerRequestApproval(String role, String userId) {
		System.out.println("approle=" + role);
		return ownerService.allSelectOwnerRequestApproval(role, userId);
	}

	@RequestMapping("/allSelectCall")
	@ResponseBody
	public List<CallDTO> allSelectCall(String role, String userId) {
		return ownerService.allSelectCall(role, userId);
	}

	@RequestMapping("/allSelectCallApproval")
	@ResponseBody
	public List<CallDTO> allSelectCallApproval(String role, String userId) {
		System.out.println("approvalrole=" + role);
		return ownerService.allSelectCallApproval(role, userId);
	}

	@RequestMapping("/updateOwnerApproval")
	@ResponseBody
	public int updateOwnerApproval(String callId, String state) {
		return ownerService.updateOwnerApproval(callId, state);
	}

	@RequestMapping("/updateSitterApproval")
	@ResponseBody
	public int updateSitterApproval(String callId, String state) {
		return ownerService.updateSitterApproval(callId, state);
	}

	@RequestMapping("/selectPetInfo")
	@ResponseBody
	public PetDTO selectPetInfo(String ownerId) {
		return ownerService.selectPetInfo(ownerId);

	}

	@RequestMapping("/request/sitterList")
	public ModelAndView requestSitterList(String[] optionSelect, String gradeSelect, String pageNum) {
		List<OptionsDTO> optionList = requestService.selectAllOption();
		List<OptionsDTO> optionSelectList = null;
		List<SitterDTO> sitterList;
		if (gradeSelect == null && optionSelect == null) {
			sitterList = sitterService.selectAllPermittedSitter();
		} else {
			if (optionSelect != null) {
				optionSelectList = optionService.selectOptionsByOptionIds(optionSelect);
			}
			if (gradeSelect == "" || gradeSelect == null) {
				gradeSelect = "0";
			}
			sitterList = sitterService.selectSittersByOpGrade(optionSelect, Integer.parseInt(gradeSelect));
		}

		/************** paging Ã³¸® ******************/
		PagingUtil pagingUtil;
		if (pageNum == null || Integer.parseInt(pageNum) < 0) {
			pagingUtil = new PagingUtil(sitterList, 0);
			sitterList = pagingUtil.getCurList(0);
		} else {
			pagingUtil = new PagingUtil(sitterList, Integer.parseInt(pageNum));
			pageNum = Integer.toString(pagingUtil.getCurPage());
			sitterList = pagingUtil.getCurList(Integer.parseInt(pageNum));
		}

		/******************************************/

		ModelAndView mv = new ModelAndView();
		mv.addObject("optionList", optionList);
		mv.addObject("sitterList", sitterList);
		mv.addObject("gradeSelect", gradeSelect);
		mv.addObject("optionSelectList", optionSelectList);
		mv.addObject("pagingUtil", pagingUtil);

		mv.setViewName("owner/sitterList");
		return mv;
	}

	@RequestMapping("/request/sitterDetailRead")
	public ModelAndView requestSitterDetailRead(String sitterId) {
		ModelAndView mv = new ModelAndView();
		List<String> list = new ArrayList<>();

		SitterDTO sitterDTO = sitterService.selectSitterById(sitterId);
		List<SitterOptionDTO> sitterOptionList = sitterService.selectSitterOption(sitterId);
		List<SitterReviewDTO> sitterReviewList = sitterService.selectSitterReviewById(sitterId);
		List<SitterImgDTO> sitterImgList = sitterService.selectSitterImg(sitterId);

		for (SitterOptionDTO dto : sitterOptionList) {
			list.add(dto.getOptionsDTO().getOptionName());
		}

		/*for(int i=0; i<sitterImgList.size(); i++) {
			System.out.println(sitterImgList);
		}*/

		mv.addObject("sitterDTO", sitterDTO);
		mv.addObject("sitterOption", list);
		mv.addObject("sitterReviewList", sitterReviewList);
		mv.addObject("sitterImgList", sitterImgList);

		mv.setViewName("owner/sitterListRead");

		return mv;
	}

	@RequestMapping("/request/insertOwnerRequest")
	public String insertOwnerRequest(OwnerRequestDTO ownerRequestDTO, String[] checkArr) {
		sitterService.insertOwnerRequest(ownerRequestDTO);
		String ownerRequestId = sitterService.selectOwnerRequestId(ownerRequestDTO);
		List<String> optionIdList = new ArrayList<>();
		List<OptionsDTO> optionList = sitterService.selectOpIdByCheckOption(checkArr);
		for (OptionsDTO dto : optionList) {
			optionIdList.add(dto.getOptionId());
		}
		sitterService.insertSittingOpByCheckOp(optionIdList, ownerRequestId);

		return "redirect:/owner/request/sitterList";
	}

}
