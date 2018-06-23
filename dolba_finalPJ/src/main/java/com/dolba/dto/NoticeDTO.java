package com.dolba.dto;

import org.springframework.web.multipart.MultipartFile;

public class NoticeDTO {
	private String noticeId;
	private String noticeTitle;
	private String noticeContent;
	private String noticeWriteday;
	private String noticeReadnum;
	private String noticeFname;
	private int noticeFsize;
	
	private MultipartFile file; //변수명은 write.jsp의 name과 동일하게 
	
	public NoticeDTO() {}

	public NoticeDTO(String noticeId, String noticeTitle, String noticeContent, String noticeWriteday,
			String noticeReadnum, String noticeFname, int noticeFsize) {
		super();
		this.noticeId = noticeId;
		this.noticeTitle = noticeTitle;
		this.noticeContent = noticeContent;
		this.noticeWriteday = noticeWriteday;
		this.noticeReadnum = noticeReadnum;
		this.noticeFname = noticeFname;
		this.noticeFsize = noticeFsize;
	}

	public String getNoticeId() {
		return noticeId;
	}

	public void setNoticeId(String noticeId) {
		this.noticeId = noticeId;
	}

	public String getNoticeTitle() {
		return noticeTitle;
	}

	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}

	public String getNoticeContent() {
		return noticeContent;
	}

	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}

	public String getNoticeWriteday() {
		return noticeWriteday;
	}

	public void setNoticeWriteday(String noticeWriteday) {
		this.noticeWriteday = noticeWriteday;
	}

	public String getNoticeReadnum() {
		return noticeReadnum;
	}

	public void setNoticeReadnum(String noticeReadnum) {
		this.noticeReadnum = noticeReadnum;
	}

	public String getNoticeFname() {
		return noticeFname;
	}

	public void setNoticeFname(String noticeFname) {
		this.noticeFname = noticeFname;
	}

	public int getNoticeFsize() {
		return noticeFsize;
	}

	public void setNoticeFsize(int noticeFsize) {
		this.noticeFsize = noticeFsize;
	}
	
	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	
}
