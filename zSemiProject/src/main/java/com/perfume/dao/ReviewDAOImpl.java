package com.perfume.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.perfume.domain.ReviewVO;

@Repository("reviewDAO")
public class ReviewDAOImpl implements ReviewDAO{
	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public void insertReview(ReviewVO vo) {
		System.out.println("ReviewDAO.insertReview");
		System.out.println(vo.getmID());
		System.out.println("pID값" + vo.getpID());
		System.out.println(vo.getrTITLE());
		System.out.println(vo.getrCONTENT());
		System.out.println(vo.getrPHOTO());
		mybatis.insert("ReviewDAO.insertReview",vo);
		
	}

	@Override
	public void updateReview(ReviewVO vo) {
		System.out.println("ReviewDAO.updateReview");
		mybatis.update("ReviewDAO.updateReview", vo);
		
	}

	@Override
	public void deleteReview(ReviewVO vo) {
		System.out.println("ReviewDAO.deleteReview");
		mybatis.delete("ReviewDAO.deleteReview", vo);
		
	}

	@Override
	public List<ReviewVO> getReviewList(ReviewVO vo) {
		System.out.println("ReviewDAO.getReviewList");
		return mybatis.selectList("ReviewDAO.getReviewList", vo);
	}

	@Override
	public ReviewVO readReview(String mID) throws Exception {
		ReviewVO vo = mybatis.selectOne("review.readReview",mID);
		return vo;
	}

	

}
