package com.dolba.dto;

import org.springframework.web.multipart.MultipartFile;

public class SitterMultiFilesDTO {

	
	private MultipartFile[] file1;
	
	public SitterMultiFilesDTO() {}
	public SitterMultiFilesDTO(MultipartFile[] file1) {
		super();
		
		this.file1 = file1;
	}


	public MultipartFile[] getFile1() {
		return file1;
	}
	public void setFile1(MultipartFile[] file1) {
		this.file1 = file1;
	}
	
	
}
