package com.dolba.controller;

import java.io.File;
import java.io.IOException;
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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.dolba.call.service.CallsService;
import com.dolba.diary.service.DiaryService;
import com.dolba.dto.CallDTO;
import com.dolba.dto.DiaryDTO;
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
	

	@Autowired
	private DiaryService diaryService;
	
	@RequestMapping("/myPage")
	public String myPage(Model md, String role, String userId,String pageNum,String tabStatus) {
		String root ="myPage/myPage";
		if(role.equals("SITTER")) {
			SitterDTO sitterDTO = sitterService.selectSitterInfo(userId);
			md.addAttribute("sitterDTO", sitterDTO);
			root ="myPage/sitterPage";
		}else {
			OwnerDTO ownerDTO = ownerService.selectOwnerInfo(userId);
			List<CallDTO> callList = ownerService.selectOwnerCall(userId);
			PetDTO petDTO = ownerService.selectPetInfo(userId);
			
			PagingUtil pagingUtil;
			if(pageNum==null || Integer.parseInt(pageNum)<0) {
				pagingUtil = new PagingUtil(callList, 0);
				callList = pagingUtil.getCurList(0);
			}else {
				pagingUtil = new PagingUtil(callList, Integer.parseInt(pageNum));
				pageNum = Integer.toString(pagingUtil.getCurPage());
				callList = pagingUtil.getCurList(Integer.parseInt(pageNum));
			}
			md.addAttribute("ownerDTO", ownerDTO);
			md.addAttribute("callList",callList);
			md.addAttribute("pagingUtil",pagingUtil);
			md.addAttribute("petDTO", petDTO);
			md.addAttribute("tabStatus", tabStatus);
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
		mv.setViewName("redirect:/");

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

		/************** paging 처리 ******************/
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

	//////////////////////////////일지 보기 ////////////////////////////
	@RequestMapping("/callDiaryList")
	public ModelAndView diaryListByCall(CallDTO callDTO) {
		
		ModelAndView mv = new ModelAndView();
		
		///////여기부터
		callDTO.setSitterId("goodsitter");
		callDTO.setOwnerId("happymom");
		callDTO.setCallReservateStart("18-06-02");
		///////여기까지 나중에 지울값
		
		List<DiaryDTO> diaryList = diaryService.selectDiaryByCall(callDTO);
		String sitterFname=diaryService.selectSitterFnameByCall(callDTO);
		for(DiaryDTO dto:diaryList) {
			String fname = dto.getDiaryFname();
			if(fname!=null) {
				String [] fileName=fname.split(",");
				for(String fn :fileName) {
					dto.getImgNameList().add(fn);
				}
			}
		}
		mv.addObject("sitterFname", sitterFname);
		mv.addObject("diaryList", diaryList);
		mv.setViewName("diary/diaryList");
		return mv;
	}
	
	@RequestMapping("/requestDiaryList")
	public ModelAndView diaryListByCall(OwnerRequestDTO ownerRequestDTO) {
		ModelAndView mv = new ModelAndView();
		
		//여기부터
		ownerRequestDTO.setOwnerId("happymom");
		ownerRequestDTO.setSitterId("goodsitter");
		ownerRequestDTO.setOwnerRequestStart("18-06-02");
		/////////////여기까지 삭제
		
		List<DiaryDTO> diaryList = diaryService.selectDiaryByRequest(ownerRequestDTO);
		String sitterFname=diaryService.selectSitterFnameByRequest(ownerRequestDTO);
		for(DiaryDTO dto:diaryList) {
			String fname = dto.getDiaryFname();
			if(fname!=null) {
				String [] fileName=fname.split(",");
				for(String fn :fileName) {
					dto.getImgNameList().add(fn);
				}
			}
		}
		mv.addObject("sitterFname", sitterFname);
		mv.addObject("diaryList", diaryList);
		mv.setViewName("diary/diaryList");
		return mv;
	}
	
	@RequestMapping("/allSelectSitterRequest")
	@ResponseBody
	public List<CallDTO> allSelectSitterRequest(String userId) {
		return sitterService.allSelectSitterRequest(userId);
	}
	
	@RequestMapping("/allSelectSitterRequestApproval")
	@ResponseBody
	public List<CallDTO> allSelectSitterRequestApproval(String userId) {
		return sitterService.allSelectSitterRequestApproval(userId);
	}
	
	@RequestMapping("/updatePetInfoForm")
	public String updatePetInfoForm(Model model,String userId) {
		model.addAttribute("petDTO", ownerService.selectPetInfo(userId));
		return "myPage/updatePetInfoForm";
	}

	
	
	/*********************Notification************************/
	@RequestMapping("/notify")
	@ResponseBody
	public String selectSitterRequestCountByUserId(String userId) {
		String count = "";
		count = requestService.selectSitterRequestCountByUserId(userId);
		return count;
	}
	
	/*********************Notification************************/
	
	@RequestMapping("/petInsertForm")
	public String petInsert() {
		return "pet/petInsert";
	}
	
	@RequestMapping("/updatePetInfo")
	public String updatePetInfo(PetDTO petDTO ,MultipartFile file, HttpServletRequest request) throws IllegalStateException, IOException {
		String rootPath = request.getSession().getServletContext().getRealPath("/");
		String attachPath = "resources/lib/save/pet";
		file = petDTO.getFile();
		
		if(file.getSize()>0) {
			String fileName=  file.getOriginalFilename();
			petDTO.setPetFname(fileName);
			System.out.println(fileName);
			file.transferTo(new File(rootPath+attachPath+file.getOriginalFilename()));
		}
		
		ownerService.updatePetInfo(petDTO);
		return "redirect:/";
	}
	
	
	@RequestMapping("/petInsert")
	public String petInsert(PetDTO petDTO, MultipartFile file, HttpServletRequest request,String ownerId) throws IllegalStateException, IOException {
		
		String rootPath = request.getSession().getServletContext().getRealPath("/");
		String attachPath = "resources/lib/pet/";
		System.out.println("petepte="+petDTO.getOwnerId());
		System.out.println("ownerID="+ownerId);
		System.out.println("file"+petDTO.getPetFname());
		file = petDTO.getFile();
		
		if(file.getSize()>0) {
			String fileName=  file.getOriginalFilename();
			petDTO.setPetFname(fileName);
			System.out.println(fileName);
			file.transferTo(new File(rootPath+attachPath+file.getOriginalFilename()));
		}
		
		ownerService.petInsert(petDTO);
		
		return "redirect:/";
	}
	
}	
