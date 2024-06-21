package com.biluo.domain;


import java.util.List;

public class PageBean {
	
	private int currentPage;
	private int pageSize;
	private int recordCount;
	private List recordList;
	private int pageCount;
	private int beginPageIndex;
	private int endPageIndex;
	
	
	
	
	public PageBean(int currentPage, int pageSize, int recordCount,
			List recordList) {
		this.currentPage = currentPage;
		this.pageSize = pageSize;
		this.recordCount = recordCount;
		this.recordList = recordList;
		
		pageCount = recordCount % pageSize == 0 ? recordCount / pageSize : recordCount / pageSize +1;
		if(this.currentPage < 1){
			this.currentPage = 1;
		}
		if(this.currentPage > pageCount){
			this.currentPage = pageCount;
		}
		System.out.println(this.currentPage);
		if(pageCount <= 5){
			beginPageIndex = 1;
			endPageIndex = pageCount;
		}else{
			beginPageIndex = this.currentPage - 2;
			endPageIndex = this.currentPage + 2;
			if(beginPageIndex < 1){
				beginPageIndex = 1;
				endPageIndex = 5;
			}
			if(endPageIndex > pageCount){
				endPageIndex = pageCount;
				beginPageIndex = pageCount - 5 + 1;
			}
		}
		
		
		
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getRecordCount() {
		return recordCount;
	}
	public void setRecordCount(int recordCount) {
		this.recordCount = recordCount;
	}
	public List getRecordList() {
		return recordList;
	}
	public void setRecordList(List recordList) {
		this.recordList = recordList;
	}
	public int getPageCount() {
		return pageCount;
	}
	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}
	public int getBeginPageIndex() {
		return beginPageIndex;
	}
	public void setBeginPageIndex(int beginPageIndex) {
		this.beginPageIndex = beginPageIndex;
	}
	public int getEndPageIndex() {
		return endPageIndex;
	}
	public void setEndPageIndex(int endPageIndex) {
		this.endPageIndex = endPageIndex;
	}
	
	
	

}
