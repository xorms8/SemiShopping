package com.perfume.domain;

import java.util.Date;

public class ReviewVO {
	
//	CREATE TABLE REVIEW(
//		    rID NUMBER(10) PRIMARY KEY not null,--리뷰번호
//		    oID NUMBER(10) REFERENCES orders(oID), --주문번호
//		    pID NUMBER(4) REFERENCES product(pID), --상품번호
//		    mID VARCHAR2(500) REFERENCES member(mID), --고객 아이디
//		    rTITLE VARCHAR2(300) not null, --제목
//		    rCONTENT VARCHAR2(4000) null, --내용
//		    rPHOTO1 VARCHAR2(4000) null,
//		    rPHOTO2 VARCHAR2(4000) null,
//		    rPHOTO3 VARCHAR2(4000) null,
//		    rRDATE DATE DEFAULT SYSDATE --글쓴날짜
//		);


	private int rID;
	private String oID;
	private int pID;
	private String mID;
	private String rTITLE;
	private String rCONTENT;
	private String rPHOTO;
	private Date rRDATE;
	
	public int getrID() {
		return rID;
	}
	public void setrID(int rID) {
		this.rID = rID;
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
	public String getmID() {
		return mID;
	}
	public void setmID(String mID) {
		this.mID = mID;
	}
	public String getrTITLE() {
		return rTITLE;
	}
	public void setrTITLE(String rTITLE) {
		this.rTITLE = rTITLE;
	}
	public String getrCONTENT() {
		return rCONTENT;
	}
	public void setrCONTENT(String rCONTENT) {
		this.rCONTENT = rCONTENT;
	}
	public String getrPHOTO() {
		return rPHOTO;
	}
	public void setrPHOTO(String rPHOTO) {
		this.rPHOTO = rPHOTO;
	}
	public Date getrRDATE() {
		return rRDATE;
	}
	public void setrRDATE(Date rRDATE) {
		this.rRDATE = rRDATE;
	}

}
