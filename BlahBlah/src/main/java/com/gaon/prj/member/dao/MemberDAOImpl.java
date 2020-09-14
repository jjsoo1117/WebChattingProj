package com.gaon.prj.member.dao;
import org.slf4j.LoggerFactory;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.gaon.prj.member.vo.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {
	@Inject
	private SqlSession sqlSession;
	
	@Override
	public int newMember(MemberVO memberVO) {
		return sqlSession.insert("mappers.MemberDAO-mapper.newMember",memberVO);
	}
	@Override
	public Map<String, Boolean> getIDInfo(String id){
		String a = sqlSession.selectOne("mappers.MemberDAO-mapper.getIDInfo",id);
		Map<String, Boolean> chkResult = new HashMap<>();
		if( a== null) chkResult.put("chkResult", true);
		else chkResult.put("chkResult", false);
		return chkResult;
	}
}