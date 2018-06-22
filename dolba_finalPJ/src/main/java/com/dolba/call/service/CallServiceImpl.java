package com.dolba.call.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dolba.call.dao.CallDAO;
import com.dolba.dto.CallDTO;
import com.dolba.dto.OptionsDTO;
import com.dolba.dto.SitterDTO;
import com.dolba.dto.SitterOptionDTO;
import com.dolba.dto.SittingOptionDTO;
import com.dolba.request.dao.RequestDAO;

@Service
public class CallServiceImpl implements CallsService {

	@Autowired
	private CallDAO callDAO;

	@Autowired
	private RequestDAO requestDAO;

	@Override
	public List<CallDTO> selectAllCallList() {
		List<CallDTO> list = callDAO.selectAllCallList();
		for (CallDTO dto : list) {
			List<SittingOptionDTO> optionList = callDAO.selectSittingOptions(dto.getCallId());
			dto.setSittingOptionList(optionList);
			String startDate = dto.getCallReservateStart();
			String endDate = dto.getCallReservateEnd();
			startDate = startDate.split(" ")[0];
			endDate = endDate.split(" ")[0];
			dto.setCallReservateStart(startDate);
			dto.setCallReservateEnd(endDate);
		}
		return list;
	}

	@Override
	public List<CallDTO> selectCallListbyOptionPrice(String[] opIds, int price) {
		List<String> opsList = new ArrayList<>();
		List<OptionsDTO> opList;

		if (opIds == null) {
			opList = requestDAO.selectAllOption();
			for (OptionsDTO dto : opList) {
				opsList.add(dto.optionId);
			}
		} else {
			for (int i = 0; i < opIds.length; i++) {
				opsList.add(opIds[i]);
			}
		}

		List<CallDTO> list = callDAO.selectCallListByOptionPrice(opsList, price);

		for (CallDTO dto : list) {
			List<SittingOptionDTO> optionList = callDAO.selectSittingOptions(dto.getCallId());
			dto.setSittingOptionList(optionList);
			String startDate = dto.getCallReservateStart();
			String endDate = dto.getCallReservateEnd();
			startDate = startDate.split(" ")[0];
			endDate = endDate.split(" ")[0];
			dto.setCallReservateStart(startDate);
			dto.setCallReservateEnd(endDate);
		}
		return list;
	}

}
