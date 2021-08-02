package com.perfume.service;

import java.util.List;

import com.perfume.domain.ReviewVO;

public interface ReviewService {
	// CRUD 기능의 메소드 구현
	// 글 등록
	void insertReview(ReviewVO vo);

	// 글 수정
	void updateReview(ReviewVO vo);

	// 글 삭제
	void deleteReview(ReviewVO vo);
	
	// 글 목록 조회
	List<ReviewVO> getReviewList(ReviewVO vo);

	public ReviewVO readReview(String mID) throws Exception;
}
