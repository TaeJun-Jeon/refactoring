package com.dolba.dto;

public class SitterOptionDTO {
	private String sitterOptionId;
	private String sitterId;
	private String optionId;
	
	private OptionsDTO optionsDTO;
	
	public String getSitterOptionId() {
		return sitterOptionId;
	}
	public void setSitterOptionId(String sitterOptionId) {
		this.sitterOptionId = sitterOptionId;
	}
	public String getSitterId() {
		return sitterId;
	}
	public void setSitterId(String sitterId) {
		this.sitterId = sitterId;
	}
	public String getOptionId() {
		return optionId;
	}
	public void setOptionId(String optionId) {
		this.optionId = optionId;
	}
	public OptionsDTO getOptionsDTO() {
		return optionsDTO;
	}
	public void setOptionsDTO(OptionsDTO optionsDTO) {
		this.optionsDTO = optionsDTO;
	}
}
