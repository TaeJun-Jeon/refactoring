package com.dolba.dto;

import java.util.ArrayList;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class DiaryDTO {
	private String dailyRecordId;
	private String sitterId;
	private String ownerId;
	private String sittingId;
	private String diaryTitle;
	private String diaryContent;
	private String diaryWriteDay;
	private String diaryPwd;
	private String diaryFname;//a.jpg , b.jpg, c.jpg
	
	private List<String> imgNameList=new ArrayList<>();
	
	private MultipartFile file;

	public String getDailyRecordId() {
		return dailyRecordId;
	}

	public void setDailyRecordId(String dailyRecordId) {
		this.dailyRecordId = dailyRecordId;
	}

	public String getSitterId() {
		return sitterId;
	}

	public void setSitterId(String sitterId) {
		this.sitterId = sitterId;
	}

	public String getOwnerId() {
		return ownerId;
	}

	public void setOwnerId(String ownerId) {
		this.ownerId = ownerId;
	}

	public String getSittingId() {
		return sittingId;
	}

	public void setSittingId(String sittingId) {
		this.sittingId = sittingId;
	}

	public String getDiaryTitle() {
		return diaryTitle;
	}

	public void setDiaryTitle(String diaryTitle) {
		this.diaryTitle = diaryTitle;
	}

	public String getDiaryContent() {
		return diaryContent;
	}

	public void setDiaryContent(String diaryContent) {
		this.diaryContent = diaryContent;
	}

	public String getDiaryWriteDay() {
		return diaryWriteDay;
	}

	public void setDiaryWriteDay(String diaryWriteDay) {
		this.diaryWriteDay = diaryWriteDay;
	}

	public String getDiaryPwd() {
		return diaryPwd;
	}

	public void setDiaryPwd(String diaryPwd) {
		this.diaryPwd = diaryPwd;
	}

	public String getDiaryFname() {
		return diaryFname;
	}

	public void setDiaryFname(String diaryFname) {
		this.diaryFname = diaryFname;
	}

	public List<String> getImgNameList() {
		return imgNameList;
	}

	public void setImgNameList(List<String> imgNameList) {
		this.imgNameList = imgNameList;
	}

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	
}
