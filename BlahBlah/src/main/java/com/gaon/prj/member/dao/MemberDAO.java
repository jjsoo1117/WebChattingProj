package com.gaon.prj.member.dao;

import java.util.Map;

import com.gaon.prj.member.vo.MemberVO;

public interface MemberDAO {
	public int newMember(MemberVO memberVO);
	public Map<String, Boolean> getIDInfo(String id);
}