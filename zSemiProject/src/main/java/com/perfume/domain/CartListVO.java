package com.perfume.domain;

import java.util.Date;

public class CartListVO {

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
	
	private int num;
	private String pNAME;
	private int pPRICE;
	private String pFname;
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getpNAME() {
		return pNAME;
	}
	public void setpNAME(String pNAME) {
		this.pNAME = pNAME;
	}
	public int getpPRICE() {
		return pPRICE;
	}
	public void setpPRICE(int pPRICE) {
		this.pPRICE = pPRICE;
	}
	
	public String getpFname() {
		return pFname;
	}
	public void setpFname(String pFname) {
		this.pFname = pFname;
	}
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
