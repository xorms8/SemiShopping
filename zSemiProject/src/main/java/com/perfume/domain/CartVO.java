package com.perfume.domain;

import java.util.Date;

public class CartVO {

//CREATE TABLE cart(
//    cartNUM NUMBER    not null,                 --카트번호 
//    mID VARCHAR2(50) not null,                  --고객아이디
//    pID NUMBER        not null,                 --물건번호
//    cartSTOCK NUMBER not null,                         --카트수량
//    addDATE date default sysdate,
//    primary key(cartNUM, mID)
//);

	private int cartNUM;
	private String mID;
	private int pID;
	private int cartSTOCK;
	private Date addDATE;
	public int getCartNUM() {
		return cartNUM;
	}
	public void setCartNUM(int cartNUM) {
		this.cartNUM = cartNUM;
	}
	public String getmID() {
		return mID;
	}
	public void setmID(String mID) {
		this.mID = mID;
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
	public Date getAddDATE() {
		return addDATE;
	}
	public void setAddDATE(Date addDATE) {
		this.addDATE = addDATE;
	}
	
	
	
}
