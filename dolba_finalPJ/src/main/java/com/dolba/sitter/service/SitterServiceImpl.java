package com.dolba.sitter.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dolba.dto.OptionsDTO;
import com.dolba.dto.OwnerRequestDTO;
import com.dolba.dto.SitterDTO;
import com.dolba.dto.SitterImgDTO;
import com.dolba.dto.SitterOptionDTO;
import com.dolba.dto.SitterReviewDTO;
import com.dolba.option.dao.OptionDAO;
import com.dolba.request.dao.RequestDAO;
import com.dolba.sitter.dao.SitterDAO;

@Service
public class SitterServiceImpl implements SitterService {
	@Autowired
	private SitterDAO sitterDao;
	
	@Autowired
	private RequestDAO requestDAO;
	
	@Override
	public List<SitterDTO> selectAllSitter() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	@Transactional
	public List<SitterDTO> selectAllPermittedSitter() {
		List<SitterDTO> list = sitterDao.selectAllPermittedSitter();
		for(SitterDTO dto : list) {
			List<SitterOptionDTO> optionList = sitterDao.selectSitterOptions(dto.getSitterId());
			dto.setSitterOptionDTO(optionList);
		}
		return list;
	}

	@Override
	public List<SitterDTO> selectAllWaitingSitter() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<SitterDTO> selectSittersByOpGrade(String[] opIds, int grade) {
		List<String> opsList = new ArrayList<>();
		List<OptionsDTO> opList;
		if(opIds == null) {
			opList = requestDAO.selectAllOption();
			for(OptionsDTO dto : opList) {
				opsList.add(dto.optionId);
			}
		}else {	
			for(int i=0;i<opIds.length;i++) {
				opsList.add(opIds[i]);
			}
		}
		
		List<SitterDTO> list = sitterDao.selectSittersByOpGrade(opsList,grade);
		for(SitterDTO dto : list) {
			List<SitterOptionDTO> optionList = sitterDao.selectSitterOptions(dto.getSitterId());
			dto.setSitterOptionDTO(optionList);
		}
		return list;
	}
	@Override
	public SitterDTO selectSitterInfo(String userId) {
		return sitterDao.selectSitterInfo(userId);
	}

	@Override
	public SitterDTO selectSitterById(String sitterId) {
		return sitterDao.selectSitterById(sitterId);
	}
	
	@Override
	public List<SitterOptionDTO> selectSitterOption(String sitterId){
		return sitterDao.selectSitterOptions(sitterId);
	}
	
	@Override
	public List<SitterReviewDTO> selectSitterReviewById(String sitterId) {
		return sitterDao.selectSitterReviewById(sitterId);
	}
	
	@Override
	public List<SitterImgDTO> selectSitterImg(String sitterId){
		return sitterDao.selectSitterImg(sitterId);
	}
	
	@Override
	public int insertOwnerRequest(OwnerRequestDTO ownerRequestDTO) {
		return sitterDao.insertOwnerRequest(ownerRequestDTO);
	}
	
	@Override
	public List<OptionsDTO> selectOpIdByCheckOption(String [] checkArr) {
		return sitterDao.selectOpIdByCheckOption(checkArr);
	}
	
	@Override
	public String selectOwnerRequestId(OwnerRequestDTO ownerRequestDTO) {
		return sitterDao.selectOwnerRequestId(ownerRequestDTO);
	}
	@Override
	public int insertSittingOpByCheckOp(List<String> optionIdList, String ownerRequestId) {
		return sitterDao.insertSittingOpByCheckOp(optionIdList, ownerRequestId);
	}
}
