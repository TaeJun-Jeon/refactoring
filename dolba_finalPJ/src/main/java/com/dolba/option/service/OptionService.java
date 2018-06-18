package com.dolba.option.service;

import java.util.List;

import com.dolba.dto.OptionsDTO;

public interface OptionService {
	List<OptionsDTO> selectOptionsByOptionIds(String [] ids);
}
