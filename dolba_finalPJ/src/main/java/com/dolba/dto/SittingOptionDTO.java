package com.dolba.dto;

public class SittingOptionDTO {
	private String sittingOptionId;
	private String sittingId;
	private OptionsDTO optionsDTO;
	public String getSittingOptionId() {
		return sittingOptionId;
	}
	public void setSittingOptionId(String sittingOptionId) {
		this.sittingOptionId = sittingOptionId;
	}
	public String getSittingId() {
		return sittingId;
	}
	public void setSittingId(String sittingId) {
		this.sittingId = sittingId;
	}
	public OptionsDTO getOptionsDTO() {
		return optionsDTO;
	}
	public void setOptionsDTO(OptionsDTO optionsDTO) {
		this.optionsDTO = optionsDTO;
	}

	
}
