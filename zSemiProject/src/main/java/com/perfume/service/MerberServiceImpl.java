package com.perfume.service;


import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.perfume.domain.MemberVO;
import com.perfume.dao.MemberDAOImpl;


@Service("memberService")
public class MerberServiceImpl implements MemberService{

	@Autowired
	private MemberDAOImpl memberDAO;
	
	/**
	  * 아이디 중복 체크하는 sql + 로그인 기능 sql
	  */
	  public MemberVO idCheck_Login( MemberVO vo)
	  {
		  return memberDAO.idCheck(vo);
	  }
	
	
	 /**
	   * 회원가입 sql
	   */
	   public int userInsert(MemberVO vo )
	   {
		  return memberDAO.memberInsert(vo);
	   }
	   
	   /*
	    * 로그아웃
	    * 
	    */
	   
	   
	   
	   public void logout(HttpSession session) throws Exception{
		   session.invalidate();
		   
	   }

	//회원가입시 중복 아이디 체크
	@Override
	public int idCheck1(String mID) throws Exception {
		System.out.println("idcheck1 서비스실행");
		return memberDAO.idCheck1(mID);
	}


	@Override
	public MemberVO readMember(String mID) throws Exception {
		System.out.println("readMember() 실행");
		MemberVO vo = memberDAO.readMember(mID);		
		return vo;
	}


	@Override
	public void updateMember(MemberVO vo) throws Exception {
		System.out.println("updateMember() 실행");
		memberDAO.updateMember(vo);
		
	}


	@Override
	public void deleteMember(MemberVO vo) throws Exception {
		System.out.println("deleteMember()실행");
		memberDAO.deleteMember(vo);
		
	}
	   
	@Override
	   public String userFindId(HttpServletResponse response, String mEMAIL) throws Exception {
	      response.setContentType("text/html;charset=utf-8");
	      PrintWriter out = response.getWriter();
	      String mID = memberDAO.userFindId(mEMAIL);
	      System.out.println(mID + " = mID 값 (서비스)");
	      
	      if(mID == null) {
	         out.print("<script>");
	         out.print("alert('가입된 아이디가 없습니다.');");
	         out.print("</script>");
	         System.out.println(mID);
	         out.close();
	         return null;
	      }else {
	         return mID;
	      }
	   }


	   @Override
	   public MemberVO userFindPw(HttpServletResponse response, String mID, String mEMAIL) throws Exception {
	      response.setContentType("text/html;charset=utf-8");
	      PrintWriter out = response.getWriter();
	      MemberVO mVO = memberDAO.userFindPw(mID,mEMAIL);
	      System.out.println("비번찾기 서비스 =" + mVO);
	      if(mVO == null) {
	         out.print("<script>");
	         out.print("alert('가입된 아이디가 없습니다.');");
	         out.print("</script>");
	         System.out.println(mVO);
	         out.close();
	         return null;
	      }else {
	         return mVO;
	      }
	   }
	
	
	
}
