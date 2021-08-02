package com.perfume.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.perfume.domain.CartListVO;
import com.perfume.domain.CartVO;
import com.perfume.domain.OrderDetailsVO;
import com.perfume.domain.OrderListVO;
import com.perfume.domain.OrderVO;
import com.perfume.domain.ProductVO;

@Repository("shopDAO")
public class ShopDAOImpl implements ShopDAO {

	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public List<ProductVO> getProductList(ProductVO vo) {
		System.out.println("===> Mybatis ShopDAO getProductList() 호출");
		return mybatis.selectList("ShopDAO.getProductList", vo);
	}

	@Override
	public ProductVO getProduct(ProductVO vo) {
		System.out.println("Mybatis ShopDAO getProduct()호출");
		return (ProductVO) mybatis.selectOne("ShopDAO.getProduct", vo);
	}

	@Override
	public void addCart(CartVO vo) {
		mybatis.insert("ShopDAO.addCart", vo);
	}

	@Override
	public List<CartListVO> CartList(String mID) {
		System.out.println("==>Mybatis ShopDAO CartList()호출");
		return mybatis.selectList("ShopDAO.cartList", mID);
	}

	@Override
	public int TotalPrice(String mID) {
		System.out.println("==>Mybatis ShopDAO TotalPrice()호출");
		return mybatis.selectOne("ShopDAO.TotalPrice", mID);
	}

	@Override
	public void deleteCart(CartVO vo) {

		System.out.println("Mybatis deleteCart 호출");
		mybatis.delete("ShopDAO.deleteCart", vo);

	}
	
	@Override
	public void cartAllDelete(String mID) {
		
		System.out.println("Mybatis cartAllDelete 호출");
		mybatis.delete("ShopDAO.cartAllDelete", mID);
	}

	@Override
	public void orderInfo(OrderVO vo) {
		mybatis.insert("ShopDAO.orderInfo", vo);
	}

	@Override
	public void orderInfo_Details(OrderDetailsVO orderDetail) {
		mybatis.insert("ShopDAO.orderInfo_Details", orderDetail);
	}

	@Override
	public List<OrderVO> orderList(OrderVO order) {
		System.out.println("==>Mybatis ShopDAO orderList()호출");
		return mybatis.selectList("ShopDAO.orderList", order);
	}

	@Override
	public List<OrderListVO> orderView(OrderVO order) {

		System.out.println("==>Mybatis ShopDAO orderView()호출");
		return mybatis.selectList("ShopDAO.orderView", order);
	}

	

}
