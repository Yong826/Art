package org.coding.service;

import java.util.ArrayList;
import java.util.List;

import org.coding.mapper.reviewMapper;
import org.coding.model.BoardVO;
import org.coding.model.CriteriaVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

	@Service
	public class reviewServiceImpl implements reviewService{
	
	@Autowired
	reviewMapper bm;
	
	// BoardService 에서 설계되어진 write 추상메서드를 구현
	public void write(BoardVO board) {
		// BoardMapper에 있는 write메서드를 호출
		// 메서드의 매개변수를 통해 BoardVO 값을
		// BoardMapper의 write 메서드로 전달
		bm.write(board);
	}
	

	// BoardService에서 설계되어진 list추상메서드를 구현
	public ArrayList<BoardVO> list(CriteriaVO cri) {
		return bm.list(cri);
	}

	
	public BoardVO detail(BoardVO board) {
		return bm.detail(board);
	}

	
	// BoardService에서 설계되어진 modify 추상메서드를 구현
	public void modify(BoardVO board) {
		bm.modify(board);
	}
	
	
	// BoardService에서 설계되어진 remove 추상메서드를 구현
	public void remove(BoardVO board) {
		bm.remove(board);
	}
	
	public int total(CriteriaVO cri) {
		return bm.total(cri);
	}

}
