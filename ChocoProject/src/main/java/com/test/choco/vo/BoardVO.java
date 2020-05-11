package com.test.choco.vo;

public class BoardVO {
	/* BOARD_NUM,BOARD_TITLE,BOARD_CONTENT,BOARD_DATE,ADMIN_ID */
	private String boardNum;
	private String boardTitle;
	private String boardContent;
	private String boardDate;
	private String adminId;
	private String boardModified;
	public String getBoardNum() {
		return boardNum;
	}
	public void setBoardNum(String boardNum) {
		this.boardNum = boardNum;
	}
	public String getBoardTitle() {
		return boardTitle;
	}
	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}
	public String getBoardContent() {
		return boardContent;
	}
	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}
	public String getBoardDate() {
		return boardDate;
	}
	public void setBoardDate(String boardDate) {
		this.boardDate = boardDate;
	}
	public String getAdminId() {
		return adminId;
	}
	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}
	public String getBoardModified() {
		return boardModified;
	}
	public void setBoardModified(String boardModified) {
		this.boardModified = boardModified;
	}
	
	
}
