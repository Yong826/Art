package org.coding.service;

import java.util.ArrayList;

import org.coding.service.ReplyService;
import org.coding.mapper.ReplyMapper;
import org.coding.model.ReplyVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReplyServiceImpl implements ReplyService {

	@Autowired
	ReplyMapper rm;
	
	// 댓글 쓰기 위한 구현
	public int rewrite(ReplyVO reply) {
		return rm.rewrite(reply);
	}
	
	// 댓글목록리스트 위한 구현
	public ArrayList<ReplyVO> list(int bno) {
		return rm.list(bno);
	}
	
	// 댓글 수정 위한 구현
	public int modify(ReplyVO reply) {
		return rm.modify(reply);
	}
	
	// 댓글 삭제 위한 구현
	public int remove(int rno) {
		return rm.remove(rno);
	}
}
