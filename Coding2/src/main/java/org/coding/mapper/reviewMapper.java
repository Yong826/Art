package org.coding.mapper;

import java.util.ArrayList;
import java.util.List;

import org.coding.model.BoardVO;
import org.coding.model.CriteriaVO;

public interface reviewMapper {
	
	// 글쓰기에 해당되는 DB작업 설계
	public void write(BoardVO board);
	
	// 게시글 목록 리스트에 해당되는 DB작업 설계
	public ArrayList<BoardVO> list(CriteriaVO cri);
	
	// 목록리스트에서 제목을 클릭한 후 상세내용을 조회하는 DB작업 설계
	public BoardVO detail(BoardVO board);
	
	// 상세내용에 해당되는 내용을 수정하는 DB설계 작업
	public void modify (BoardVO board);
	
	// 상세내용에 해당되는 내용을 삭제하는 DB설계 작업
	public void remove (BoardVO board);
	
	//board테이블 전체건수 DB설계
	public int total(CriteriaVO cri);
}
