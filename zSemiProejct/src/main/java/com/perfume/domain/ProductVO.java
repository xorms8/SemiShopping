package com.perfume.domain;

public class ProductVO {

	
//	CREATE TABLE PRODUCT(
//		    pID         NUMBER(4)       not null,         --상품번호
//		    pNAME       VARCHAR2(100)   not null,         --상품이름
//		    catecode    VARCHAR2(30)    not null,         --카테고리코드
//		    pPRICE      NUMBER(10)      not null,         --상품가격
//		    pSTOCK      NUMBER(3)       null,             --상품재고
//		    pIMAGE      VARCHAR2(4000)  null,             --상품이미지
//		    pDETAIL     VARCHAR2(1000)  null,             --상세설명
//		    primary key(pID)
//		);
	
	private int pID;
	private String pNAME;
	private String catecode;
	private int pPRICE;
	private int pSTOCK;
	private String pIMAGE;
	private String pDETAIL;
	
	
	public int getpID() {
		return pID;
	}
	public void setpID(int pID) {
		this.pID = pID;
	}
	public String getpNAME() {
		return pNAME;
	}
	public void setpNAME(String pNAME) {
		this.pNAME = pNAME;
	}
	public String getCatecode() {
		return catecode;
	}
	public void setCatecode(String catecode) {
		this.catecode = catecode;
	}
	public int getpPRICE() {
		return pPRICE;
	}
	public void setpPRICE(int pPRICE) {
		this.pPRICE = pPRICE;
	}
	public int getpSTOCK() {
		return pSTOCK;
	}
	public void setpSTOCK(int pSTOCK) {
		this.pSTOCK = pSTOCK;
	}
	public String getpIMAGE() {
		return pIMAGE;
	}
	public void setpIMAGE(String pIMAGE) {
		this.pIMAGE = pIMAGE;
	}
	public String getpDETAIL() {
		return pDETAIL;
	}
	public void setpDETAIL(String pDETAIL) {
		this.pDETAIL = pDETAIL;
	}
	
	
	
	
}
