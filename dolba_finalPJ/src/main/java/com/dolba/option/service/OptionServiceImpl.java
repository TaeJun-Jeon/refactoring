package com.dolba.option.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dolba.dto.OptionsDTO;
import com.dolba.option.dao.OptionDAO;

@Service
public class OptionServiceImpl implements OptionService{
	
	@Autowired
	private OptionDAO optionDAO;
	
	@Override
	public List<OptionsDTO> selectOptionsByOptionIds(String[] ids) {
		List<OptionsDTO> list = new ArrayList<>();
		
		for(int i=0;i<ids.length;i++) {
			list.add(optionDAO.selectOptionNameByOptionId(ids[i]));
		}
		
		return list;
	}

}
