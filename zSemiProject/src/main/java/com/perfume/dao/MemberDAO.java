package com.perfume.dao;
 
import com.perfume.domain.MemberVO;
public interface MemberDAO {
	/*
	 * 회원가입 기능 구현
	 * */
	int memberInsert(MemberVO vo);
	
	/**
	 * id 중복체트 기능 구현
	 */	
	MemberVO  idCheck( MemberVO vo );
	
	/**
	 * 로그인 확인 기능 구현
	 */
	MemberVO memberLogin(MemberVO vo);
	
	//회원가입시 중복 아이디 체크
	public int idCheck1(String mID) throws Exception;

	
	//회원정보
	public MemberVO readMember(String mID) throws Exception;
	//회원정보수정
	public void updateMember(MemberVO vo) throws Exception;
	//회원탈퇴
	public void deleteMember(MemberVO vo)throws Exception;
	
	
	//아이디찾기
    public String userFindId(String mEMAIL) throws Exception;
    //비밀번호찾기
    public MemberVO userFindPw(String mID,String mEMAIL) throws Exception;
    
}
