package org.coding.service;

import java.util.ArrayList;

import org.coding.mapper.MypageMapper;
import org.coding.model.MemberVo;
import org.coding.model.MypageVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MypageServiceImpl implements MypageService{

	@Autowired
	MypageMapper mm;
	//내가 쓴 글을 출력하는 구현
	public ArrayList<MypageVO> mypage(String id)	{
		return mm.mypage(id);
	}
	
	public void mywrite(MemberVo member) {
		System.out.println("service="+member);
		mm.mywrite(member);
	
	}
		
	
}
