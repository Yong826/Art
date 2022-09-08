package org.coding.service;

import java.util.ArrayList;

import org.coding.model.MemberVo;
import org.coding.model.MypageVO;

public interface MypageService {

	public ArrayList<MypageVO> mypage(String id);
	
	public void mywrite(MemberVo member);
	
		
}
