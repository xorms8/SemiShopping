package com.perfume.domain;

import java.util.Date;

public class OrderListVO {
//	select
//    o.oID, o.mID, o.oNAME, o.oADDRESS1, o.oADDRESS2, o.oADDRESS3, o.oPHONE, o.oAMOUNT, o.oRDATE,
//    d.orderDetailsNum, d.pID, d.cartSTOCK,
//    p.pNAME, p.pFname, p.pPRICE
//from orders o 
//    inner join orders_details d
//    on o.oID = d.oID
//    inner join product p
//    on d.pID = p.pID
//where o.mID = #{mID}
//    and o.oID= #{oID};
	
	
	private String oID;
	private String mID;
	private String oNAME;
	private String oADDRESS1;
	private String oADDRESS2;
	private String oADDRESS3;
	private String oPHONE;
	private int oAMOUNT;
	private Date oRDATE;
	private String delivery;
	
	private int orders_details;
	private int pID;
	private int cartSTOCK;
	
	private String pNAME;
	private String pFname;
	private String pPRICE;
	
	
	
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
	public String getoNAME() {
		return oNAME;
	}
	public void setoNAME(String oNAME) {
		this.oNAME = oNAME;
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
	public String getoPHONE() {
		return oPHONE;
	}
	public void setoPHONE(String oPHONE) {
		this.oPHONE = oPHONE;
	}
	public int getoAMOUNT() {
		return oAMOUNT;
	}
	public void setoAMOUNT(int oAMOUNT) {
		this.oAMOUNT = oAMOUNT;
	}
	public Date getoRDATE() {
		return oRDATE;
	}
	public void setoRDATE(Date oRDATE) {
		this.oRDATE = oRDATE;
	}
	public int getOrders_details() {
		return orders_details;
	}
	public void setOrders_details(int orders_details) {
		this.orders_details = orders_details;
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
	public String getpNAME() {
		return pNAME;
	}
	public void setpNAME(String pNAME) {
		this.pNAME = pNAME;
	}
	public String getpFname() {
		return pFname;
	}
	public void setpFname(String pFname) {
		this.pFname = pFname;
	}
	public String getpPRICE() {
		return pPRICE;
	}
	public void setpPRICE(String pPRICE) {
		this.pPRICE = pPRICE;
	}
	
	
}
