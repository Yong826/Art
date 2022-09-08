package org.coding.service;

import java.util.ArrayList;
import java.util.List;

import org.coding.mapper.reviewMapper;
import org.coding.model.BoardVO;
import org.coding.model.CriteriaVO;
import org.coding.model.AttachVO;
import org.coding.mapper.AttachMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

	@Service
	public class reviewServiceImpl implements reviewService{
	
	@Autowired
	reviewMapper bm;
	@Autowired
	AttachMapper am;
	
	// BoardService 에서 설계되어진 write 추상메서드를 구현
	public void write(BoardVO board) {
		// BoardMapper에 있는 write메서드를 호출
		// 메서드의 매개변수를 통해 BoardVO 값을
		// BoardMapper의 write 메서드로 전달
		bm.write(board);
		
		board.getAttach().forEach(attach->{
			
			// AttachFileVO 의 bno 에 BoardVO 의 bno 를 저장.
			attach.setBno(board.getBno());
			am.attach(attach);				
		});
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

	// BoardService에서 설계되어진 attachlist 추상메서드를 구현
	public ArrayList<AttachVO> attachlist(int bno){
		return am.attachlist(bno);
	};
	
	// // BoardService에서 설계되어진 count 추상메서드를 구현
	public int count(BoardVO board) {
		return bm.count(board);
	}
}
