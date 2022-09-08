package org.coding.mapper;

import java.util.ArrayList;

import org.coding.model.BoardVO;

public interface mainpageMapper {
	
	
	//게시글 불러올 DB작업 설계

	public ArrayList<BoardVO> mainlist(BoardVO board);
}
