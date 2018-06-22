package com.dolba.admin.dao;

import java.util.List;

import com.dolba.dto.OwnerDTO;
import com.dolba.dto.SitterDTO;

public interface AdminDAO {

	int joinOwner(OwnerDTO ownerDTO);

	int joinSitter(SitterDTO sitterDTO);

	int idCheck(String userId);

	List<SitterDTO> adminselectSitterList();

	int updateSitterPermit(String sitterId, String state);


}
