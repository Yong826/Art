package org.coding.model;
//pageNum과 amount(한페이지당 게시물 갯수) 값을 전달하는 Model
public class CriteriaVO {
	private int pageNum;  // 페이지번호
	private int amount;   // 한 페이지당 게시물 갯수
	private String keyword;  // 키워드를 통해 검색
	private String type;  // 키워드 기준
	
	// 생성자
	public CriteriaVO() {
		this(1,10);  // 컨트롤러에서pageNum은 1로, amount는 10으로 초기화		
	}
	public CriteriaVO(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
	
	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	@Override
	public String toString() {
		return "CriteriaVO [pageNum=" + pageNum + ", amount=" + amount + ", keyword=" + keyword + ", type=" + type
				+ "]";
	}

}
