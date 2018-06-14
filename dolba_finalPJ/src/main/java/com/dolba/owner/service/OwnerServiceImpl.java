package com.dolba.owner.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dolba.dto.CallDTO;
import com.dolba.dto.OwnerRequestDTO;
import com.dolba.dto.PetDTO;
import com.dolba.owner.dao.OwnerDAO;

@Service
public class OwnerServiceImpl implements OwnerService {

	@Autowired
	private OwnerDAO ownerDAO;
	
	@Override
	public List<OwnerRequestDTO> allSelectOwnerRequest() {
		return ownerDAO.allSelectOwnerRequest();
	}

	@Override
	public List<CallDTO> allSelectCall() {
		return ownerDAO.allSelectCall();
	}

	@Override
	public int updateOwnerApproval(String callId, String state) {
		return ownerDAO.updateOwnerApproval(callId,state);
	}

	@Override
	public List<OwnerRequestDTO> allSelectOwnerRequestApproval() {
		return ownerDAO.allSelectOwnerRequestApproval();
	}

	@Override
	public List<CallDTO> allSelectCallApproval() {
		return ownerDAO.allSelectCallApproval();
	}

	@Override
	public PetDTO selectPetInfo(String ownerId) {
		return ownerDAO.selectPetInfo(ownerId);
	}

}
