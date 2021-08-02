package com.perfume.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.perfume.domain.MemberVO;
import com.perfume.domain.OrderListVO;
import com.perfume.domain.OrderVO;
import com.perfume.domain.ProductVO;


@Repository("adminDAO")
public class AdminDAOImpl implements AdminDAO{
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	
	@Override
	public void productInsert(ProductVO vo) { 
		mybatis.insert("AdminDAO.productInsert", vo);
	}


	
	public List<ProductVO> getProductList(ProductVO vo) {
		System.out.println("===> Mybatis getProductList() 호출");
		return mybatis.selectList("AdminDAO.getProductList", vo);
		// selectList AdminDAO.getProductList로 사용
		// AdminDAO는 Mapper의 <mapper namespace="AdminDAO">
		// getProductList는 Mapper의 <select id ="getProductList"
	}

	public ProductVO getProduct(ProductVO vo) {
		System.out.println("Mybatis getProduct()호출");
		return (ProductVO) mybatis.selectOne("AdminDAO.getProduct", vo);
	}



	public void updateProduct(ProductVO vo) {
		System.out.println("Mybatis updateProduct() 호출");
		mybatis.update("AdminDAO.updateProduct", vo);
		
	}


	public void deleteProduct(ProductVO vo) {
		System.out.println("Mybatis deleteProduct() 호출");
		mybatis.update("AdminDAO.deleteProduct", vo);
		
	}



	
	public List<MemberVO> getMemberList(MemberVO vo) {
		System.out.println("===> Mybatis getMemberList() 호출");
		return mybatis.selectList("AdminDAO.getMemberList", vo);
	}



	public MemberVO getMember(MemberVO vo) {
		System.out.println("Mybatis getMember()호출");
		return (MemberVO) mybatis.selectOne("AdminDAO.getMember", vo);
	}




	public void updateMember(MemberVO vo) {
		System.out.println("Mybatis updateMember() 호출");
		mybatis.update("AdminDAO.updateMember", vo);
		
	}



	
	public void deleteMember(MemberVO vo) {
		
		System.out.println("Mybatis deleteMember() 호출");
		mybatis.update("AdminDAO.deleteMember", vo);
	}



	@Override
	public List<OrderVO> orderList() {
		System.out.println("==>Mybatis AdminDAO orderList()호출");
		return mybatis.selectList("AdminDAO.orderList");
	}

	@Override
	public List<OrderListVO> orderView(OrderVO order) {

		System.out.println("==>Mybatis AdminDAO orderView()호출");
		return mybatis.selectList("AdminDAO.orderView", order);
	}



	@Override
	public void delivery(OrderVO order) {
		
		System.out.println("Mybatis delivery() 호출");
		mybatis.update("AdminDAO.delivery", order);
	}
	
	

}
