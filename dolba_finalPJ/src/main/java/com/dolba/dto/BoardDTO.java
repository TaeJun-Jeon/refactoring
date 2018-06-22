package com.dolba.dto;

public class BoardDTO {
	private String QAId;
	private String ownerId;
	private String QATitle;
	private String QAContent;
	private String QAWriteday;
	private int QAReadnum;
	private String QAPwd;
	
	public String getQAId() {
		return QAId;
	}
	public void setQAId(String qAId) {
		QAId = qAId;
	}
	public String getOwnerId() {
		return ownerId;
	}
	public void setOwnerId(String ownerId) {
		this.ownerId = ownerId;
	}
	public String getQATitle() {
		return QATitle;
	}
	public void setQATitle(String qATitle) {
		QATitle = qATitle;
	}
	public String getQAContent() {
		return QAContent;
	}
	public void setQAContent(String qAContent) {
		QAContent = qAContent;
	}
	public String getQAWriteday() {
		return QAWriteday;
	}
	public void setQAWriteday(String qAWriteday) {
		QAWriteday = qAWriteday;
	}
	public int getQAReadnum() {
		return QAReadnum;
	}
	public void setQAReadnum(int qAReadnum) {
		QAReadnum = qAReadnum;
	}
	public String getQAPwd() {
		return QAPwd;
	}
	public void setQAPwd(String qAPwd) {
		QAPwd = qAPwd;
	}
	
	
}
