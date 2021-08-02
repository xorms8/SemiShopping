package com.perfume.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.perfume.dao.AdminDAOImpl;
import com.perfume.domain.MemberVO;
import com.perfume.domain.OrderListVO;
import com.perfume.domain.OrderVO;
import com.perfume.domain.ProductVO;


@Service("adminService")
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private AdminDAOImpl adminDAO;
	
	
	@Override
	public void productInsert(ProductVO vo) {
		
		adminDAO.productInsert(vo);
	}


	public List<ProductVO> getProductList(ProductVO vo) {
		return adminDAO.getProductList(vo);
	}


	public ProductVO getProduct(ProductVO vo) {
		return adminDAO.getProduct(vo);
	}


	public void updateProduct(ProductVO vo) {
		adminDAO.updateProduct(vo);
		
	}

	
	public void deleteProduct(ProductVO vo) {
		adminDAO.deleteProduct(vo);
	}


	
	public List<MemberVO> getMemberList(MemberVO vo) {
		return adminDAO.getMemberList(vo);
	}
	
	public MemberVO getMember(MemberVO vo) {
		return adminDAO.getMember(vo);
	}


	
	public void updateMember(MemberVO vo) {
		adminDAO.updateMember(vo);
	}


	@Override
	public void deleteMember(MemberVO vo) {
		adminDAO.deleteMember(vo);
		
	}


	@Override
	public List<OrderVO> orderList() {
		
		return adminDAO.orderList();
	}


	@Override
	public List<OrderListVO> orderView(OrderVO order) {
		
		return adminDAO.orderView(order);
	}


	@Override
	public void delivery(OrderVO order) {
		adminDAO.delivery(order);
	}
	
	

}
