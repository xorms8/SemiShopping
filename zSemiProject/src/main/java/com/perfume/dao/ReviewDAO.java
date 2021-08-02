package com.perfume.dao;

import java.util.List;

import com.perfume.domain.ReviewVO;

public interface ReviewDAO {

	public void insertReview(ReviewVO vo);
	
	public void updateReview(ReviewVO vo);
	
	public void deleteReview(ReviewVO vo);
	
	public List<ReviewVO> getReviewList(ReviewVO vo) ;
	
	public ReviewVO readReview(String mID) throws Exception;
}
