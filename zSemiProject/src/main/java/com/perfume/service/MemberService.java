package com.perfume.service;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.perfume.domain.MemberVO;

public interface MemberService {
	//로그인 + 아이디 체크
	public MemberVO idCheck_Login( MemberVO vo);
	
	//로그아웃
	public void logout(HttpSession session) throws Exception;
	
	//회원가입
	public int userInsert(MemberVO vo);
	
	//회원가입시 중복 아이디 체크
	public int idCheck1(String mID) throws Exception;
	
	//회원정보 보기
	public MemberVO readMember(String mID) throws Exception;
		
	//회원정보 수정
	public void updateMember(MemberVO vo) throws Exception;
		
	//회원정보 삭제
	public void deleteMember(MemberVO vo) throws Exception;
	
	//아이디 찾기
    public String userFindId(HttpServletResponse response,String mEMAIL) throws Exception;
    //비밀번호 찾기
    public MemberVO userFindPw(HttpServletResponse response, String mID,String mEMAIL) throws Exception;
}
