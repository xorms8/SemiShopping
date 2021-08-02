package com.perfume.dao;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.perfume.domain.MemberVO;

@Repository("memberDAO")
public class MemberDAOImpl implements MemberDAO{
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public int memberInsert(MemberVO vo) {
		System.out.println("===>  MemberMapper userInsert() 호출");
		return mybatis.insert("member.userInsert", vo);
	}
	
	@Override
	public MemberVO idCheck(MemberVO vo) {
		System.out.println("===> MemberMapper idCheck 호출");
		return mybatis.selectOne("member.idCheck", vo);
	}
	

	@Override
	public MemberVO memberLogin(MemberVO vo) {
		System.out.println("===> MemberMapper idCheck 호출");
		return mybatis.selectOne("member.idCheck", vo);
	}

	@Override
	public int idCheck1(String mID) throws Exception {
		int result = mybatis.selectOne("member.idCheck1",mID);
		System.out.println("member.idCheck1" + mybatis);
		return result;
	}
	
	
	@Override
	public MemberVO readMember(String mID) throws Exception {
		//컨트롤러 호출 후 정보저장후 db 이동
		MemberVO vo = mybatis.selectOne("member.readMember", mID);
		return vo;
	}

	@Override
	public void updateMember(MemberVO vo) throws Exception {
		 mybatis.update("member.updateMember",vo);
		
	}

	@Override
	public void deleteMember(MemberVO vo) throws Exception {
		mybatis.delete("member.deleteMember",vo);
		
	}
	
	@Override
	   public String userFindId(String mEMAIL) throws Exception {
	      System.out.println("아디찾기 DAO");
	      return mybatis.selectOne("member.userFindId",mEMAIL);
	   }

	   @Override
	   public MemberVO userFindPw(String mID, String mEMAIL) throws Exception {
	      System.out.println("비번찾기 DAO");
	      HashMap map = new HashMap();
	      map.put("mID", mID);
	      map.put("mEMAIL", mEMAIL);
	      System.out.println("비번찾기 DAO  = " + map );
	      return mybatis.selectOne("member.userFindPw", map); 
	   }
	
	
	
}
