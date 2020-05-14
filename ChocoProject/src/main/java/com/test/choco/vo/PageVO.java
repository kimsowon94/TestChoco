package com.test.choco.vo;

public class PageVO {

	/* ======================================== */
	private int pageSize;
	private int firstPageNo;
	private int prevPageNo;
	private int startPageNo;
	private int pageNo1;

	private int endPageNo;
	private int nextPageNo;
	private int finalPageNo;
	private int totalCount;

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getFirstPageNo() {
		return firstPageNo;
	}

	public void setFirstPageNo(int firstPageNo) {
		this.firstPageNo = firstPageNo;
	}

	public int getPrevPageNo() {
		return prevPageNo;
	}

	public void setPrevPageNo(int prevPageNo) {
		this.prevPageNo = prevPageNo;
	}

	public int getStartPageNo() {
		return startPageNo;
	}
	public void setStartPageNo(int startPageNo) {
		this.startPageNo = startPageNo;
	}

	public int getPageNo1() {
		return pageNo1;
	}

	public void setPageNo1(int pageNo1) {
		this.pageNo1 = pageNo1;
	}
	public int getEndPageNo() {
		return endPageNo;
	}

	public void setEndPageNo(int endPageNo) {
		this.endPageNo = endPageNo;
	}

	public int getNextPageNo() {
		return nextPageNo;
	}

	public void setNextPageNo(int nextPageNo) {
		this.nextPageNo = nextPageNo;
	}

	public int getFinalPageNo() {
		return finalPageNo;
	}

	public void setFinalPageNo(int finalPageNo) {
		this.finalPageNo = finalPageNo;
	}

	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		this.makePaging();
	}

	private void makePaging() {
		if (this.totalCount == 0)
			return;
		if (this.pageNo1 == 0)
			this.setPageNo1(1); 
		if (this.pageSize == 0)
			this.setPageSize(10); 

		int finalPage = (totalCount + (pageSize - 1)) / pageSize; 
		if (this.pageNo1 > finalPage)
			this.setPageNo1(finalPage); 

		if (this.pageNo1 < 0 || this.pageNo1 > finalPage)
			this.pageNo1 = 1; 

		boolean isNowFirst = pageNo1 == 1 ? true : false; 
		boolean isNowFinal = pageNo1 == finalPage ? true : false; 

		int startPage = ((pageNo1 - 1) / 10) * 10 + 1; 
		int endPage = startPage + 10 - 1; 

		if (endPage > finalPage) { 
			endPage = finalPage;
		}

		this.setFirstPageNo(1); 

		if (isNowFirst) {
			this.setPrevPageNo(1); 
		} else {
			this.setPrevPageNo(((pageNo1 - 1) < 1 ? 1 : (pageNo1 - 1))); 
		}

		this.setStartPageNo(startPage); 
		this.setEndPageNo(endPage); 

		if (isNowFinal) {
			this.setNextPageNo(finalPage); 
		} else {
			this.setNextPageNo(((pageNo1 + 1) > finalPage ? finalPage : (pageNo1 + 1)));

		}

		this.setFinalPageNo(finalPage);
	}

	/* ======================================== */

}
