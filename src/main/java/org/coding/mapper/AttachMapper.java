package org.coding.mapper;

import java.util.ArrayList;

import org.coding.model.AttachVO;

public interface AttachMapper {

	// 첨부파일에 해당되는 DB작업 설계
	public void attach(AttachVO attach);
	
	// 첨부파일리스트에 해당되는 DB작업 설계
	public ArrayList<AttachVO> attachlist(int bno);	
}
