package org.coding.service;

import javax.servlet.http.HttpSession;

import org.coding.mapper.MemberServiceMapper;
import org.coding.model.MemberVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class Memberserviceimplement implements MemberService {
	
	@Autowired
	MemberServiceMapper MSM;
	
	public void memberjoin (MemberVo member) { 
		MSM.memberjoin(member);
	}

	@Override
	public boolean login(MemberVo member, HttpSession session) {
		
			MemberVo login = MSM.login(member);
			boolean result = false;
			
			if(login!=null) {
				System.out.println("세션 값");
				session.setAttribute("login", login);
				System.out.println("세션 값="+session.getAttribute("login"));
				result=true;
			}
			return result;
	}
}