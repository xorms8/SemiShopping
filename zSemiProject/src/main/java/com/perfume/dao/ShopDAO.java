package com.perfume.dao;


import java.util.List;

import com.perfume.domain.ProductVO;
import com.perfume.domain.CartListVO;
import com.perfume.domain.CartVO;
import com.perfume.domain.OrderDetailsVO;
import com.perfume.domain.OrderListVO;
import com.perfume.domain.OrderVO;

public interface ShopDAO {

	
	public List<ProductVO> getProductList(ProductVO vo);
	
	public ProductVO getProduct(ProductVO vo);
	
	public void addCart(CartVO vo);
	
	public List<CartListVO> CartList(String mID);
	
	//public int TotalPrice();

	int TotalPrice(String mID);
	
	public void deleteCart(CartVO vo);
	
	public void orderInfo(OrderVO vo);

	public void orderInfo_Details(OrderDetailsVO orderDetail);
	
	public List<OrderVO> orderList(OrderVO order);
	
	public List<OrderListVO> orderView(OrderVO order);
	
	public void cartAllDelete (String mID);
}
