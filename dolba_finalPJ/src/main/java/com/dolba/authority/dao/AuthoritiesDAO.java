package com.dolba.authority.dao;

import com.dolba.dto.AuthorityDTO;
import com.dolba.dto.OwnerDTO;

public interface AuthoritiesDAO {
	/**
	 * 사용자 권한 등록
	 * (한 USER(아이디)가 여러개의 권한을 가질 수 있다.
	 * */
	int insertAuthority(AuthorityDTO authority);
	
	/**
	 * id에 해당하는 권한 검색.
	 * */

	AuthorityDTO selectAuthorityByUserId(String userId);


}
