package com.perfume.domain;


public class OrderDetailsVO {
	
	private int orderDetailsNum;
	private String oID; //주문번호
	private int pID;// 상품번호
 	private int cartSTOCK; //카트 수량
	public int getOrderDetailsNum() {
		return orderDetailsNum;
	}
	public void setOrderDetailsNum(int orderDetailsNum) {
		this.orderDetailsNum = orderDetailsNum;
	}
	
	
	public String getoID() {
		return oID;
	}
	public void setoID(String oID) {
		this.oID = oID;
	}
	public int getpID() {
		return pID;
	}
	public void setpID(int pID) {
		this.pID = pID;
	}
	public int getCartSTOCK() {
		return cartSTOCK;
	}
	public void setCartSTOCK(int cartSTOCK) {
		this.cartSTOCK = cartSTOCK;
	}
 	
 	
	
}
