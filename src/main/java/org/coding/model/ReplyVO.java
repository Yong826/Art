package org.coding.model;

public class ReplyVO {
	private int rno;  // 댓글번호
	private String reply; // 댓글내용
	private String id; // id
	private String replaydate; // 댓글 작성일자
	private int bno; // 게시판 번호
	
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public String getReply() {
		return reply;
	}
	public void setReply(String reply) {
		this.reply = reply;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getReplaydate() {
		return replaydate;
	}
	public void setReplaydate(String replaydate) {
		this.replaydate = replaydate;
	}
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	
	@Override
	public String toString() {
		return "ReplyVO [rno=" + rno + ", reply=" + reply + ", id=" + id + ", replaydate=" + replaydate + ", bno=" + bno
				+ "]";
	}
	
}
