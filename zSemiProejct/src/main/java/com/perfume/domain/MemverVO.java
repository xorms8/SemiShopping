package com.perfume.domain;

import java.util.Date;

public class MemverVO {
 
	
//	CREATE TABLE MEMBER(
//		    mID         VARCHAR2(50)       not null,            --고객 아이디
//		    mPW         VARCHAR2(100)      not null,            --고객비밀번호
//		    mNAME       VARCHAR2(30)       not null,            --고객이름
//		    mEMAIL      VARCHAR2(30)       not null,            --고객이메일
//		    mPHONE      VARCHAR2(30)       not null,            --고객전화번호
//		    mRDATE DATE DEFAULT SYSDATE,                        --고객 가입일
//		    primary key(mID)
//		);
	
	private String mID;
	private String mPW;
	private String mNAME;
	private String mEMAIL;
	private String mPHONE;
	private Date mRDATE;
	
	public String getmID() {
		return mID;
	}
	public void setmID(String mID) {
		this.mID = mID;
	}
	public String getmPW() {
		return mPW;
	}
	public void setmPW(String mPW) {
		this.mPW = mPW;
	}
	public String getmNAME() {
		return mNAME;
	}
	public void setmNAME(String mNAME) {
		this.mNAME = mNAME;
	}
	public String getmEMAIL() {
		return mEMAIL;
	}
	public void setmEMAIL(String mEMAIL) {
		this.mEMAIL = mEMAIL;
	}
	public String getmPHONE() {
		return mPHONE;
	}
	public void setmPHONE(String mPHONE) {
		this.mPHONE = mPHONE;
	}
	public Date getmRDATE() {
		return mRDATE;
	}
	public void setmRDATE(Date mRDATE) {
		this.mRDATE = mRDATE;
	}
	
	
	
	
}
