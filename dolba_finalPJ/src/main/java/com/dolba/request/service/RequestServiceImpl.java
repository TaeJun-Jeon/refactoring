package com.dolba.request.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dolba.dto.OptionsDTO;
import com.dolba.dto.OwnerRequestDTO;
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

	@Override
	public String selectSitterRequestCountByUserId(String userId) {
		return requestDao.selectSitterRequestCountByUserId(userId);
	}

	@Override
	public String selectOwnerRequestCountByUserId(String userId) {
		return requestDao.selectOwnerRequestCountByUserId(userId);
	}

	@Override
	public OwnerRequestDTO ownerRequestDetail(String primaryKey) {
		return requestDao.selectRequestByKey(primaryKey);
	}

	@Override
	public int updatePaymentState(String ownerRequestId, String state) {
		return requestDao.updatePaymentState(ownerRequestId, state);
	}
}
