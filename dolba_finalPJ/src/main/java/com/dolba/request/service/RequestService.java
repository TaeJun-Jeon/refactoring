package com.dolba.request.service;

import java.util.List;

import com.dolba.dto.OptionsDTO;
import com.dolba.dto.SitterDTO;

public interface RequestService {
	/**
	 * 서비스에서 제공하느 모든 옵션 리스트
	 * @return
	 */
	List<OptionsDTO> selectAllOption();
}
