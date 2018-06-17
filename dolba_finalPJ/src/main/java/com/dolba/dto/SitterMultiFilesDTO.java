package com.dolba.dto;

import org.springframework.web.multipart.MultipartFile;

public class SitterMultiFilesDTO {

	private String title;
	private MultipartFile[] file1;
	
	public SitterMultiFilesDTO() {}
	public SitterMultiFilesDTO(String title, MultipartFile[] file1) {
		super();
		this.title = title;
		this.file1 = file1;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public MultipartFile[] getFile1() {
		return file1;
	}
	public void setFile1(MultipartFile[] file1) {
		this.file1 = file1;
	}
	
	

	
}
