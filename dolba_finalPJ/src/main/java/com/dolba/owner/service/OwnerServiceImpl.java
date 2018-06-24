package com.dolba.owner.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dolba.dto.CallDTO;
import com.dolba.dto.OwnerDTO;
import com.dolba.dto.OwnerRequestDTO;
import com.dolba.dto.PetDTO;
import com.dolba.owner.dao.OwnerDAO;

@Service
public class OwnerServiceImpl implements OwnerService {

	@Autowired
	private OwnerDAO ownerDAO;
	
	@Override
	public List<OwnerRequestDTO> allSelectOwnerRequest(String role,String userId) {
		return ownerDAO.allSelectOwnerRequest(role,userId);
	}

	@Override
	public List<CallDTO> allSelectCall(String role, String userId) {
	
			return ownerDAO.allSelectCallOwner(role, userId);
	}

	@Override
	public int updateOwnerApproval(String callId, String state) {
		return ownerDAO.updateOwnerApproval(callId,state);
	}

	@Override
	public List<OwnerRequestDTO> allSelectOwnerRequestApproval(String role, String userId) {
		return ownerDAO.allSelectOwnerRequestApproval(role, userId);
	}


	@Override
	public PetDTO selectPetInfo(String ownerId) {
		return ownerDAO.selectPetInfo(ownerId);
	}

	@Override
	public List<CallDTO> allSelectCallApproval(String role, String userId) {
		if(role.equals("OWNER")) {
			return ownerDAO.allSelectCallApprovalOwner(userId);
		}
		return ownerDAO.allSelectCallApprovalSitter(userId);
	}

	@Override
	public int updateSitterApproval(String callId, String state) {
		return ownerDAO.updateSitterApproval(callId,state);
	}

	@Override
	public OwnerDTO selectOwnerInfo(String userId) {
		return ownerDAO.selectOwnerInfo(userId);
	}

	@Override
	public List<CallDTO> selectOwnerCall(String userId) {
		return ownerDAO.selectOwnerCall(userId);
	}


}
