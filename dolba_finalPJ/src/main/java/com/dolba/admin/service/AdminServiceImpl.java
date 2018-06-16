package com.dolba.admin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dolba.admin.dao.AdminDAO;
import com.dolba.authority.dao.AuthoritiesDAO;
import com.dolba.dto.AuthorityDTO;
import com.dolba.dto.OwnerDTO;
import com.dolba.dto.SitterDTO;
import com.dolba.util.Constants;

@Service
@Transactional
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminDAO adminDAO;
	
	@Autowired
	private AuthoritiesDAO authoritiesDAO;
	
	@Autowired
	private AuthorityDTO authority;
	
	@Override
	public int joinOwner(OwnerDTO ownerDTO) {
		
		adminDAO.joinOwner(ownerDTO);
		authority.setUserId(ownerDTO.getOwnerId());
		authority.setPassword(ownerDTO.getOwnerPassword());
		authority.setRole(Constants.ROLE_OWNER);
		authoritiesDAO.insertAuthority(authority);
		return 0;
	}

	@Override
	public int joinSitter(SitterDTO sitterDTO) {
		adminDAO.joinSitter(sitterDTO);
		authority.setUserId(sitterDTO.getSitterId());
		authority.setPassword(sitterDTO.getSitterPassword());
		authority.setRole(Constants.ROLE_SITTER);
		authoritiesDAO.insertAuthority(authority);
		return 0;
	}

}
