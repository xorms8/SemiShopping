package com.perfume.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.perfume.dao.ShopDAOImpl;
import com.perfume.domain.CartListVO;
import com.perfume.domain.CartVO;
import com.perfume.domain.OrderDetailsVO;
import com.perfume.domain.OrderListVO;
import com.perfume.domain.OrderVO;
import com.perfume.domain.ProductVO;

@Service("shopService")
public class ShopServiceImpl implements ShopService {
	
	@Autowired
	private ShopDAOImpl shopDAO;
	
	
	@Override
	public List<ProductVO> getProductList(ProductVO vo) {
		return shopDAO.getProductList(vo);
	}

	@Override
	public ProductVO getProduct(ProductVO vo) {
		return shopDAO.getProduct(vo);
	}

	@Override
	public void addCart(CartVO vo) {
		shopDAO.addCart(vo);
		
	}

	@Override
	public List<CartListVO> cartList(String mID) {
		return shopDAO.CartList(mID);
	}

	@Override
	public int TotalPrice(String mID) {
		
		return shopDAO.TotalPrice(mID);
	}

	@Override
	public void deleteCart(CartVO vo) {
		shopDAO.deleteCart(vo);
	}
	
	@Override
	public void cartAllDelete(String mID) {
		shopDAO.cartAllDelete(mID);
	}

	@Override
	public void orderInfo(OrderVO vo) {
		shopDAO.orderInfo(vo);
		
	}

	@Override
	public void orderInfo_Details(OrderDetailsVO orderDetail) {
		shopDAO.orderInfo_Details(orderDetail);
	}

	@Override
	public List<OrderVO> orderList(OrderVO order) {
		
		return shopDAO.orderList(order);
	}

	@Override
	public List<OrderListVO> orderView(OrderVO order) {
		
		return shopDAO.orderView(order);
	}

	
	
	
	
}
