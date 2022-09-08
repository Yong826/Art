package org.coding.service;

import java.util.ArrayList;

import org.coding.mapper.mainpageMapper;

import org.coding.model.BoardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class mainpageServicempl implements mainpageService{
	
	@Autowired
	mainpageMapper mpm;
	public ArrayList<BoardVO> mainlist(BoardVO board) {
		return mpm.mainlist(board);
	}
}

