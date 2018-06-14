package com.dolba.request.dao;

import java.util.List;

import com.dolba.dto.OptionsDTO;
import com.dolba.dto.SitterDTO;

public interface RequestDAO {
	/**
	 * 서비스에서 제공하는 모든 option list select
	 * @return
	 */
	public List<OptionsDTO> selectAllOption();
	
}
