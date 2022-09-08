package org.coding.model;

import java.util.ArrayList;

import org.coding.model.AttachVO;

public class BoardVO {
	// 게시판번호(bno)
	private int bno;
	// 아이디(id)
	private String id;
	// 제목(title)
	private String title;
	// 내용(content)
	private String content;
	// 작성일자(regdate)
	private String regdate;
	// 조회수(cnt)
	private int cnt;
	// AttachFileVO (파일업로드 관련 모델) 포함시키기
	private ArrayList<AttachVO> attach;  // 배열로 저장
	
	// getter&setter 메소드
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
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
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public ArrayList<AttachVO> getAttach() {
		return attach;
	}
	public void setAttach(ArrayList<AttachVO> attach) {
		this.attach = attach;
	}
	// 제대로 데이터가 들어갔는지 확인하는 메소드
	@Override
	public String toString() {
		return "BoardVO [bno=" + bno + ", id=" + id + ", title=" + title + ", content=" + content + ", regdate="
				+ regdate + ", cnt=" + cnt + ", attach=" + attach + "]";
	}
	
}
