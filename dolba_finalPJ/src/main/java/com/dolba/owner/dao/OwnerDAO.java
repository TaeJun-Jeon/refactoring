package com.dolba.owner.dao;

import java.util.List;

import com.dolba.dto.CallDTO;
import com.dolba.dto.OwnerDTO;
import com.dolba.dto.OwnerRequestDTO;
import com.dolba.dto.PetDTO;

public interface OwnerDAO {

	List<OwnerRequestDTO> allSelectOwnerRequest(String role, String userId);
	
	int updateOwnerApproval(String callId, String state);

	List<OwnerRequestDTO> allSelectOwnerRequestApproval(String role, String userId);

	List<CallDTO> allSelectCallApproval(String role, String userId);

	PetDTO selectPetInfo(String ownerId);
	
	OwnerDTO selectUserById(String userId);

	List<CallDTO> allSelectCallOwner(String userId, String userId2);

	List<CallDTO> allSelectCallSitter(String userId);

	List<CallDTO> allSelectCallApprovalOwner(String role);

	List<CallDTO> allSelectCallApprovalSitter(String role);

	int updateSitterApproval(String callId, String state);

	OwnerDTO selectOwnerInfo(String userId);

}
