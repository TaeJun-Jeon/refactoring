package com.dolba.sitter.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dolba.dto.CallDTO;
import com.dolba.dto.OptionsDTO;
import com.dolba.dto.OwnerRequestDTO;
import com.dolba.dto.SitterDTO;
import com.dolba.dto.SitterImgDTO;
import com.dolba.dto.SitterOptionDTO;
import com.dolba.dto.SitterReviewDTO;

@Repository
public class SitterDAOImpl implements SitterDAO {
	@Autowired
	private SqlSession session;

	@Override
	public List<SitterDTO> selectAllSitter() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<SitterDTO> selectAllPermittedSitter() {
		return session.selectList("sitterMapper.selectAllPermittedSitter");
	}

	@Override
	public List<SitterDTO> selectAllWaitingSitter() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<SitterOptionDTO> selectSitterOptions(String sitterId) {
		return session.selectList("sitterMapper.selectSitterOption", sitterId);
	}

	@Override
	public List<SitterDTO> selectSittersByOpGrade(List<String> opList, int grade) {
		Map<String , Object> map = new HashMap<>();
		map.put("opList", opList);
		map.put("grade", grade);
		return session.selectList("sitterMapper.selectSittersByOpGrade",map);
	}

	@Override
	public SitterDTO selectSitterInfo(String userId) {
		return session.selectOne("sitterMapper.selectSitterInfo", userId);
	}
	
	@Override
	public SitterDTO selectSitterById(String sitterId) {
		return session.selectOne("sitterMapper.selectSitterById", sitterId);
	}
	
	@Override
	public List<SitterReviewDTO> selectSitterReviewById(String sitterId) {
		return session.selectList("sitterMapper.selectSitterReviewById", sitterId);
	}
	
	@Override
	public List<SitterImgDTO> selectSitterImg(String sitterId){
		return session.selectList("sitterMapper.selectSitterImg", sitterId);
	}
	
	@Override
	public int insertOwnerRequest(OwnerRequestDTO ownerRequestDTO) {
		return session.insert("sitterMapper.insertOwnerRequest", ownerRequestDTO);
	}
	
	@Override
	public List<OptionsDTO> selectOpIdByCheckOption(String [] checkArr){
		HashMap<String, String[]> map = new HashMap<>();
		map.put("checkArr", checkArr);
		
		return session.selectList("sitterMapper.selectOpIdByCheckOption", map);
	}
	
	@Override
	public String selectOwnerRequestId(OwnerRequestDTO ownerRequestDTO) {
		return session.selectOne("sitterMapper.selectOwnerRequestId", ownerRequestDTO);
	}
	
	@Override
	public int insertSittingOpByCheckOp(List<String> optionIdList, String ownerRequestId) {
		Map<String, Object> map = new HashMap<>();
		
		
		for(String id : optionIdList) {
			map.put("ownerRequestId", ownerRequestId);
			map.put("id", id);
			session.insert("sitterMapper.insertSittingOpByCheckOp", map);
		}
		
		return 1;
		
	}
	
	@Override
	public List<CallDTO> allSelectSitterRequest(String userId) {
		return session.selectList("sitterMapper.allSelectSitterRequest", userId);
	}

	@Override
	public List<CallDTO> allSelectSitterRequestApproval(String userId) {
		return session.selectList("sitterMapper.allSelectSitterRequestApproval", userId);
	}
}
