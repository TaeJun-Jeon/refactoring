package com.dolba.dto;

public class ReviewDTO {
	private String reviewId;
	private String ownerId;
	private String reviewTitle;
	private String reviewContent;
	private String reviewReadnum;
	private String reviewWriteday;
	private String reviewPwd;
	
	public ReviewDTO() {}

	public ReviewDTO(String reviewId, String ownerId, String reviewTitle, String reviewContent, String reviewReadnum,
			String reviewWriteday, String reviewPwd) {
		super();
		this.reviewId = reviewId;
		this.ownerId = ownerId;
		this.reviewTitle = reviewTitle;
		this.reviewContent = reviewContent;
		this.reviewReadnum = reviewReadnum;
		this.reviewWriteday = reviewWriteday;
		this.reviewPwd = reviewPwd;
	}

	public String getReviewId() {
		return reviewId;
	}

	public void setReviewId(String reviewId) {
		this.reviewId = reviewId;
	}

	public String getOwnerId() {
		return ownerId;
	}

	public void setOwnerId(String ownerId) {
		this.ownerId = ownerId;
	}

	public String getReviewTitle() {
		return reviewTitle;
	}

	public void setReviewTitle(String reviewTitle) {
		this.reviewTitle = reviewTitle;
	}

	public String getReviewContent() {
		return reviewContent;
	}

	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}

	public String getReviewReadnum() {
		return reviewReadnum;
	}

	public void setReviewReadnum(String reviewReadnum) {
		this.reviewReadnum = reviewReadnum;
	}

	public String getReviewWriteday() {
		return reviewWriteday;
	}

	public void setReviewWriteday(String reviewWriteday) {
		this.reviewWriteday = reviewWriteday;
	}

	public String getReviewPwd() {
		return reviewPwd;
	}

	public void setReviewPwd(String reviewPwd) {
		this.reviewPwd = reviewPwd;
	}
	
	
}
