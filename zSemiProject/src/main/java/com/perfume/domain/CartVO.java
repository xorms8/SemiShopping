package com.perfume.domain;

public class CartVO {
	// CREATE TABLE cart(
//  cID NUMBER(10) PRIMARY KEY not null,        --카트번호 
//  mID VARCHAR2(500) REFERENCES member(mID),   --고객아이디
//  pID NUMBER(4) REFERENCES product(pID),      --물건번호
//  cQTY NUMBER(3) DEFAULT 1                    --구매수량
//);
	private int cID;
	private String mID;
	private int pID;
	private int cQTY;

	public int getcID() {
		return cID;
	}

	public void setcID(int cID) {
		this.cID = cID;
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

	public int getcQTY() {
		return cQTY;
	}

	public void setcQTY(int cQTY) {
		this.cQTY = cQTY;
	}

}
