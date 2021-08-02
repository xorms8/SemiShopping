package com.perfume.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.perfume.dao.ReviewDAOImpl;
import com.perfume.domain.ReviewVO;


@Service("ReviewService")
public class ReviewServiceImpl implements ReviewService {
	@Autowired
	private ReviewDAOImpl reviewDAO;

	@Override
	public void insertReview(ReviewVO vo) {
		System.out.println("insertReview service");
		reviewDAO.insertReview(vo);
		
	} 

	@Override
	public void updateReview(ReviewVO vo) {
		System.out.println("updateReview service");
		reviewDAO.updateReview(vo);
		
	}

	@Override
	public void deleteReview(ReviewVO vo) {
		System.out.println("deleteReview service");
		reviewDAO.deleteReview(vo);
		
	}

	@Override
	public List<ReviewVO> getReviewList(ReviewVO vo) {
		System.out.println("getReviewList service");
		return reviewDAO.getReviewList(vo);
	}

	@Override
	public ReviewVO readReview(String mID) throws Exception {
		ReviewVO vo = reviewDAO.readReview(mID);
		return vo;
	}

	
	
}