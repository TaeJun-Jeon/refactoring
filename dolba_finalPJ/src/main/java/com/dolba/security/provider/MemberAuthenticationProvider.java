package com.dolba.security.provider;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.dolba.authority.dao.AuthoritiesDAO;
import com.dolba.dto.OwnerDTO;
import com.dolba.owner.dao.OwnerDAO;

/**
 * springSecurity에서 loginForm에 의해 id와 pwd를 입력하고
 * 로그인을 클릭했을 때 인증과 권한에 대해 체크해주는 클래스.
 * (authenticate()가 자동으로 호출!)
 * */

@Service //id="memberAuthenticationProvider"
public class MemberAuthenticationProvider implements AuthenticationProvider{
	
	@Autowired
	private OwnerDAO ownerDAO;
	
	@Autowired
	private AuthoritiesDAO aDAO;

	
	
	public MemberAuthenticationProvider() {}
	public Authentication authenticate(Authentication authentication) throws AuthenticationException{
		
		if(!this.supports(authentication.getClass())) {
			return null;
		}
		
		//1. 인수로 들어온 authentication을 이용하여 id,pwd 꺼낸다.
		String userId = authentication.getName();//id
		
		OwnerDTO ownerDTO = ownerDAO.selectMemberById(userId);
		
		if(ownerDTO==null) {
			throw new UsernameNotFoundException(userId+"는 없는 회원입니다.");
		}
		
		
		//2. db에서 사용자 정보를 가져온다
			//(비밀번호는 복호화해서 가져온다)
		String password = (String)authentication.getCredentials();
		if(!password.equals(ownerDTO.getOwnerPassword())){
			throw new UsernameNotFoundException(password+"가 일치하지 않습니다.");
		}

				
		//4. db에서 사용자 정보가 있다면  권한목록을 가져온다.
		OwnerDTO owner =ownerDAO.selectMemberById(userId);
		List<SimpleGrantedAuthority> authList= new ArrayList<>();
		authList.add(new SimpleGrantedAuthority(owner.getOwnerId()));
		
		
		//5. 최종적으로 인증된 사용자의 정보를 Authentication에 저장해서 리턴한다.
		
		// 넘어오는 id와 pwd를 가지고 DB에 있는 정보와 비교.
	;
		
		return new UsernamePasswordAuthenticationToken(ownerDTO, null, authList);
	}
	
	/**
	 * 인수로 전달된 Authentication 객체가 인증처리를 할 수 있는 객체인지 여부를 판단하는 메소드
	 * */
	
	public boolean supports(Class<?> authentication) {
		
		return UsernamePasswordAuthenticationToken.class.isAssignableFrom(authentication);
	}
}
