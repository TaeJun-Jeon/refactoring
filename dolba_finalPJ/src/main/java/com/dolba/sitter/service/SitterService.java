package com.dolba.sitter.service;

import java.util.List;

import com.dolba.dto.CallDTO;
import com.dolba.dto.OptionsDTO;
import com.dolba.dto.OwnerRequestDTO;
import com.dolba.dto.SitterDTO;
import com.dolba.dto.SitterImgDTO;
import com.dolba.dto.SitterOptionDTO;
import com.dolba.dto.SitterReviewDTO;

public interface SitterService {
	/**
	 * 등록되어있는 모든 펫시터 선택하는 메소드
	 * @return
	 */
	public List<SitterDTO> selectAllSitter();
	
	/**
	 * 허가된 펫시터 리스트 선택하는 메소드
	 * @return
	 */
	public List<SitterDTO> selectAllPermittedSitter();
	
	/**
	 * 허가 대기중인 펫시터 리스트 선택하는 메소드
	 * @return
	 */
	public List<SitterDTO> selectAllWaitingSitter();
	
	/**
	 * Option 조건과 Grade 조건에 따라 sitter 검색
	 * @param opIds
	 * @param grade
	 * @return
	 */
	public List<SitterDTO> selectSittersByOpGrade(String [] opIds,int grade);

	public SitterDTO selectSitterInfo(String userId);
	
	/**
	 * sitterId에 해당하는 sitter 정보 선택하는 메소드
	 * @param sitterId
	 * @return 
	 */
	public SitterDTO selectSitterById(String sitterId);
	
	/**
	 * sitterId에 해당하는 sitter가 선택한 옵션 선택하는 메소드
	 * @param sitterId
	 * @return 
	 */
	public List<SitterOptionDTO> selectSitterOption(String sitterId);
	
	/**
	 * sitterId에 해당하는 sitter 후기 선택하는 메소드
	 * @param sitterId
	 * @return 
	 **/
	public List<SitterReviewDTO> selectSitterReviewById(String sitterId);
	
	/**
	 * sitterId에 해당하는 sitter 사진들 선택하는 메소드
	 * @param sitterId
	 * @return 
	 **/
	public List<SitterImgDTO> selectSitterImg(String sitterId);
	
	/**
	 * 맡기기 예약 등록하기
	 * @param ownerRequestDTO
	 * @return 
	 **/
	public int insertOwnerRequest(OwnerRequestDTO ownerRequestDTO);
	
	/**
	 * optionName에 해당하는 optionId 검색하는 메소드
	 * @param checkArr
	 * @return 
	 **/
	public List<OptionsDTO> selectOpIdByCheckOption(String [] checkArr);
	
	/**
	 * 등록된 owner_request에 해당하는 owner_request_id 검색하는 메소드 
	 **/
	public String selectOwnerRequestId(OwnerRequestDTO ownerRequestDTO);
	
	/**
	 * owner_request에서 선택된 옵션 sitting_option에 등록하기
	 * @param checkArr
	 * @return 
	 **/
	public int insertSittingOpByCheckOp(List<String> optionIdList, String ownerRequestId);

	public List<CallDTO> allSelectSitterRequest(String userId);

	public List<CallDTO> allSelectSitterRequestApproval(String userId);

}
