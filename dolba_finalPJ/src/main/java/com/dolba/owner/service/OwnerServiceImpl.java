package com.dolba.owner.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dolba.dto.OwnerRequestDTO;
import com.dolba.owner.dao.OwnerDAO;

@Service
public class OwnerServiceImpl implements OwnerService {

	@Autowired
	private OwnerDAO ownerDAO;
	
	@Override
	public List<OwnerRequestDTO> allSelectOwnerRequest() {
		return ownerDAO.allSelectOwnerRequest();
	}

}
