package com.dolba.admin.service;

import com.dolba.dto.OwnerDTO;
import com.dolba.dto.SitterDTO;

public interface AdminService {

	int joinOwner(OwnerDTO ownerDTO);

	int joinSitter(SitterDTO sitterDTO);

}
