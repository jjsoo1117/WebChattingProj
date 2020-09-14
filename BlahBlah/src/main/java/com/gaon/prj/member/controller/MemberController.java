package com.gaon.prj.member.controller;

import java.util.HashMap;
import java.util.Map;
import java.util.logging.Logger;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gaon.prj.member.svc.MemberSVC;
import com.gaon.prj.member.vo.MemberVO;

@Controller
@RequestMapping(value="/member/*")
public class MemberController {
	
	@Inject
	MemberSVC memberSVC;
	
	/**
	 * 로그인 페이지 이동
	 * @return
	 */
	@RequestMapping("/loginForm")
	public String loginForm() {
		return "member/loginForm";
	}
	
	/**
	 * 회원가입 페이지 이동
	 * @return
	 */
	@RequestMapping("/joinForm")
	public String joinForm() {
		return "member/joinForm";
	}
	@RequestMapping(value="/getIDInfo", method= RequestMethod.POST)
	public @ResponseBody Map<String, Boolean> getIDInfo(@RequestBody HashMap<String, String> IDInfo) throws Exception {
		return memberSVC.getIDInfo(IDInfo.get("id"));
	}

	@PostMapping("/newMember")
	public void newMember(MemberVO memberVO) {
		memberVO.setId("id");
		memberVO.setPw("pw");
		memberVO.setNickname("nickname");
		memberVO.setEmail("email");
		memberVO.setPhone("phone");
		memberSVC.newMember(memberVO);
	}
	

}