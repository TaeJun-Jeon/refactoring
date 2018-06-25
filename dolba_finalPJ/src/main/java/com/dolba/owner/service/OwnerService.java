package com.dolba.owner.service;

import java.util.List;

import com.dolba.dto.CallDTO;
import com.dolba.dto.OwnerDTO;
import com.dolba.dto.OwnerRequestDTO;
import com.dolba.dto.PetDTO;

public interface OwnerService {

	List<OwnerRequestDTO> allSelectOwnerRequest(String role, String userId);

	List<CallDTO> allSelectCall(String userId, String userId2);

	int updateOwnerApproval(String callId, String state);

	List<OwnerRequestDTO> allSelectOwnerRequestApproval(String role, String userId);

	List<CallDTO> allSelectCallApproval(String role, String userId);

	PetDTO selectPetInfo(String ownerId);

	int updateSitterApproval(String callId, String state);

	OwnerDTO selectOwnerInfo(String userId);

	List<CallDTO> selectOwnerCall(String userId);

	int updatePetInfo(PetDTO petDTO);

	int petInsert(PetDTO petDTO);


}
