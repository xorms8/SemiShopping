package com.perfume.service;

import java.util.List;

import com.perfume.domain.MemberVO;
import com.perfume.domain.OrderListVO;
import com.perfume.domain.OrderVO;
import com.perfume.domain.ProductVO;

public interface AdminService {

	// CRUD 기능의 메소드 구현

	// 상품 등록
	void productInsert(ProductVO vo) throws Exception;

	// 상품 목록
	List<ProductVO> getProductList(ProductVO vo);

	// 상품 상세 조회
	ProductVO getProduct(ProductVO vo);

	// 상품 수정
	void updateProduct(ProductVO vo);

	// 상품 삭제
	void deleteProduct(ProductVO vo);

	// 회원 관리 메소드 구현

	// 회원 목록
	List<MemberVO> getMemberList(MemberVO vo);

	// 회원 상세 조회
	MemberVO getMember(MemberVO vo);

	// 회원 수정
	void updateMember(MemberVO vo);

	// 회원 삭제
	void deleteMember(MemberVO vo);
	
	// 판매 리스트 (전체 회원)
	List<OrderVO> orderList();
	
	// 판매 상세내역 (전체 회원)
	List<OrderListVO> orderView(OrderVO order);
	
	// 배송정보 변경
	void delivery(OrderVO order);
}
