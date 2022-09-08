package org.coding.model;

<<<<<<< HEAD
import java.util.ArrayList;

import org.coding.model.AttachVO;

=======
>>>>>>> 38dbd94c68f007827ea503873151565d50af3293
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
<<<<<<< HEAD
	// AttachFileVO (파일업로드 관련 모델) 포함시키기
	private ArrayList<AttachVO> attach;  // 배열로 저장
=======
>>>>>>> 38dbd94c68f007827ea503873151565d50af3293
	
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
<<<<<<< HEAD
	public ArrayList<AttachVO> getAttach() {
		return attach;
	}
	public void setAttach(ArrayList<AttachVO> attach) {
		this.attach = attach;
	}
=======
	
>>>>>>> 38dbd94c68f007827ea503873151565d50af3293
	// 제대로 데이터가 들어갔는지 확인하는 메소드
	@Override
	public String toString() {
		return "BoardVO [bno=" + bno + ", id=" + id + ", title=" + title + ", content=" + content + ", regdate="
<<<<<<< HEAD
				+ regdate + ", cnt=" + cnt + ", attach=" + attach + "]";
=======
				+ regdate + ", cnt=" + cnt + "]";
>>>>>>> 38dbd94c68f007827ea503873151565d50af3293
	}
	
}
