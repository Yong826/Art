package org.coding.mapper;

import java.util.ArrayList;


import org.coding.model.MemberVo;
import org.coding.model.MypageVO;

//마이페이지 mapper
public interface MypageMapper {
	
	// 내가 쓴글 출력하는 DB작업
	public ArrayList<MypageVO> mypage(String id);

	public void mywrite(MemberVo member);
	
}

