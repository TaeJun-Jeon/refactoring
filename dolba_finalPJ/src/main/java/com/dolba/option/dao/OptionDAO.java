package com.dolba.option.dao;

import com.dolba.dto.OptionsDTO;

public interface OptionDAO {
	OptionsDTO selectOptionByOptionId(String id);
}
