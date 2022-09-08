package org.coding.mapper;

import org.coding.model.MemberVo;

public interface MemberServiceMapper {
	public void memberjoin(MemberVo member);
	
	public MemberVo login(MemberVo member);
}
