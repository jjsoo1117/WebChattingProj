package com.gaon.prj.member.svc;

import java.util.Map;

import com.gaon.prj.member.vo.MemberVO;

public interface MemberSVC {

	public int newMember(MemberVO memberVO);
	public Map<String, Boolean> getIDInfo(String id);

}