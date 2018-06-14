package com.dolba.request.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dolba.dto.OptionsDTO;
import com.dolba.dto.SitterDTO;
import com.dolba.request.dao.RequestDAO;
import com.dolba.sitter.dao.SitterDAO;

@Service
public class RequestServiceImpl implements RequestService {

	@Autowired
	private SitterDAO sitterDao;

	@Autowired
	private RequestDAO requestDao;

	@Override
	public List<OptionsDTO> selectAllOption() {
		return requestDao.selectAllOption();
	}
}
