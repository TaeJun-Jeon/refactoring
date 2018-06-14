package com.dolba.owner.dao;

import java.util.List;

import com.dolba.dto.CallDTO;
import com.dolba.dto.OwnerRequestDTO;
import com.dolba.dto.PetDTO;

public interface OwnerDAO {

	List<OwnerRequestDTO> allSelectOwnerRequest();

	List<CallDTO> allSelectCall();

	int updateOwnerApproval(String callId, String state);

	List<OwnerRequestDTO> allSelectOwnerRequestApproval();

	List<CallDTO> allSelectCallApproval();

	PetDTO selectPetInfo(String ownerId);

}
