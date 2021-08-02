package com.perfume.domain;

import java.io.File;
import java.io.IOException;

import org.springframework.web.multipart.MultipartFile;

public class ProductVO {

	 
//	CREATE TABLE PRODUCT(
//		    pID         NUMBER(4)       not null,         --상품번호
//		    pNAME       VARCHAR2(100)   not null,         --상품이름
//		    pPRICE      NUMBER(10)      not null,         --상품가격
//		    pSTOCK      NUMBER(3)       null,             --상품재고
//		    pIMAGE      VARCHAR2(4000)  null,             --상품이미지
//		    pDETAIL     VARCHAR2(1000)  null,             --상세설명
//			pFname		VARCHAR2(100)
//			pFsize		NUMBER
//		    primary key(pID)
//		);
	
	private int pID;
	private String pNAME;
	private int pPRICE;
	private int pSTOCK;
	private String pIMAGE;
	private String pDETAIL;
	private String pFname;
	private long pFsize;
	
	//*************************************************
		MultipartFile file;	// write.jsp에 파일첨부시 name="file"과 동일한 변수명
		
		public MultipartFile getFile() {
			return file;
		}
		public void setFile(MultipartFile file) {
			this.file = file;
			
			// 업로드 파일 접근
			if(! file.isEmpty()){
				this.pFname = file.getOriginalFilename();
				this.pFsize = file.getSize();
				
				//***********************************************
				// 해당 경로로 변경
				File f = new File("C:\\Users\\xorms\\Desktop\\학원\\Spring3\\zSemiProject\\src\\main\\webapp\\resources\\upload\\"+pFname);
				//C:\Users\xorms\Desktop\학원\Spring3\gWebBoard1\src\main\webapp\resources
				try {
					file.transferTo(f);
					
				} catch (IllegalStateException e) {				
					e.printStackTrace();
				} catch (IOException e) {
					
					e.printStackTrace();
				}
			}
		}
	
	
	
	
	
	
	
	
	
	
	
	
	
	public String getpFname() {
		return pFname;
	}
	public void setpFname(String pFname) {
		this.pFname = pFname;
	}
	
	public long getpFsize() {
		return pFsize;
	}
	public void setpFsize(long pFsize) {
		this.pFsize = pFsize;
	}
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
