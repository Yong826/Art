package org.coding.service;

import java.util.ArrayList;

import org.coding.model.BoardVO;
import org.coding.model.CriteriaVO;
<<<<<<< HEAD
import org.coding.model.AttachVO;
=======
>>>>>>> 38dbd94c68f007827ea503873151565d50af3293

public interface reviewService {

	// 글쓰기 설계
	public void write(BoardVO board);
	
	// 글 목록 리스트 설계
	public ArrayList<BoardVO> list(CriteriaVO cri);
	
	// 글 상세 내용 보기 설계
	public BoardVO detail(BoardVO board);
	
	// 글 수정 설계
	public void modify(BoardVO board);
	
	// 글 삭제 설계
	public void remove(BoardVO board);
	
<<<<<<< HEAD
	// 전체 건수 설계
	public int total(CriteriaVO cri);
	
	// 첨부파일리스트  설계
	public ArrayList<AttachVO> attachlist(int bno);
	
	// 조회수 증가 설계
	public int count(BoardVO board);
	
=======
	public int total(CriteriaVO cri);
	
>>>>>>> 38dbd94c68f007827ea503873151565d50af3293
}
