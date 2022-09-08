package org.coding.model;

public class MypageVO {

	private int bno;		//글번호
	private String title;	//제목
	private String content;	//내용
	private String regdate; //작성일자
	private String moddate;	//수정일자
	private String id;		//작성자
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public String getModdate() {
		return moddate;
	}
	public void setModdate(String moddate) {
		this.moddate = moddate;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	@Override
	public String toString() {
		return "MypageVO [bno=" + bno + ", title=" + title + ", content=" + content + ", regdate=" + regdate
				+ ", moddate=" + moddate + ", id=" + id + "]";
	}
	
	
	
}
