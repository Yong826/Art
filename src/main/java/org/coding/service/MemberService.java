package org.coding.service;

import javax.servlet.http.HttpSession;

import org.coding.model.MemberVo;

public interface MemberService {
	// 회원가입
	public void memberjoin(MemberVo member);

	public boolean login(MemberVo member, HttpSession session);
}


