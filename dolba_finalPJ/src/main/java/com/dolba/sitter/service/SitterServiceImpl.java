package com.dolba.sitter.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dolba.dto.OptionsDTO;
import com.dolba.dto.SitterDTO;
import com.dolba.dto.SitterOptionDTO;
import com.dolba.sitter.dao.SitterDAO;

@Service
public class SitterServiceImpl implements SitterService {
	@Autowired
	private SitterDAO sitterDao;
	
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

}
