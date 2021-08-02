package com.perfume.domain;

import java.util.Date;

public class OrderVO {

	private String oID; //주문번호
	private String mID; //고객 아이디
	private Date oRDATE; //주문날짜
	private String oNAME; //수령자 이름
	private String oPHONE; //수령자 폰번호
	private String oADDRESS1; //배송 우편번호
	private String oADDRESS2; //배송 주소
 	private String oADDRESS3; // 배송 상세주소
 	private int oAMOUNT; //합계
	private String delivery; //배송정보
	
	
	
	public String getDelivery() {
		return delivery;
	}
	public void setDelivery(String delivery) {
		this.delivery = delivery;
	}
	public String getoID() {
		return oID;
	}
	public void setoID(String oID) {
		this.oID = oID;
	}
	public String getmID() {
		return mID;
	}
	public void setmID(String mID) {
		this.mID = mID;
	}
	public Date getoRDATE() {
		return oRDATE;
	}
	public void setoRDATE(Date oRDATE) {
		this.oRDATE = oRDATE;
	}
	public String getoNAME() {
		return oNAME;
	}
	public void setoNAME(String oNAME) {
		this.oNAME = oNAME;
	}
	public String getoPHONE() {
		return oPHONE;
	}
	public void setoPHONE(String oPHONE) {
		this.oPHONE = oPHONE;
	}
	
	public String getoADDRESS1() {
		return oADDRESS1;
	}
	public void setoADDRESS1(String oADDRESS1) {
		this.oADDRESS1 = oADDRESS1;
	}
	public String getoADDRESS2() {
		return oADDRESS2;
	}
	public void setoADDRESS2(String oADDRESS2) {
		this.oADDRESS2 = oADDRESS2;
	}
	public String getoADDRESS3() {
		return oADDRESS3;
	}
	public void setoADDRESS3(String oADDRESS3) {
		this.oADDRESS3 = oADDRESS3;
	}
	public int getoAMOUNT() {
		return oAMOUNT;
	}
	public void setoAMOUNT(int oAMOUNT) {
		this.oAMOUNT = oAMOUNT;
	}
}
