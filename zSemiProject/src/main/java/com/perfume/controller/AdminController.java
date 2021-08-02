package com.perfume.controller;


import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.redirectedUrl;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.perfume.service.AdminService;
import com.perfume.service.MemberService;
import com.perfume.domain.MemberVO;
import com.perfume.domain.OrderListVO;
import com.perfume.domain.OrderVO;
import com.perfume.domain.ProductVO;;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService adminService;

	//관리자 페이지 요청
	@RequestMapping("index2.do")
	public String preHandle(MemberVO vo, HttpServletRequest req, HttpServletResponse res) 
			throws Exception{
		//관리자만 접근 가능하게 세션관리, 로그인 화면으로 리턴
		HttpSession session = req.getSession();
		MemberVO member = (MemberVO)session.getAttribute("member");
		
		if(member == null || member.getVerify() != 9) {
			return "login";
		}else {return "index2";}
		
	}
	
	//상품 PRODUCT Controller@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
	
	//상품 등록 입력 페이지 요청 (시작임)
	@RequestMapping("productInsert.do")
	public String productInsert(MemberVO vo, HttpServletRequest req, HttpServletResponse res) {
		//관리자만 접근 가능하게 세션관리, 로그인 화면으로 리턴
		HttpSession session = req.getSession();
		MemberVO member = (MemberVO)session.getAttribute("member");
		
		if(member == null || member.getVerify() != 9) {
			return "login";
		}
		return "productInsert";
	}
		
	//상품 등록 버튼 링크 요청시(Insert / CRUD->C(CREATE)
	@RequestMapping("productSave.do")
	public String productSave(ProductVO vo) throws Exception{
		adminService.productInsert(vo);
		return "productInsert";
	}
	
	//상품 목록 페이지 요청
	@RequestMapping("productList.do")
	public String productList(ProductVO vo, Model model,MemberVO v2, HttpServletRequest req, HttpServletResponse res){
		model.addAttribute("productList", adminService.getProductList(vo));
		
		//관리자만 접근 가능하게 세션관리, 로그인 화면으로 리턴
		HttpSession session = req.getSession();
		MemberVO member = (MemberVO)session.getAttribute("member");
		
		if(member == null || member.getVerify() != 9) {
			return "login";
		}
		return "productList";
	}
	
	//상품 상세 조회
	@RequestMapping("getProduct.do")
	public void getProduct(ProductVO vo, Model model){
		model.addAttribute("product", adminService.getProduct(vo));
	}
	
	//상품 수정
	@RequestMapping("productUpdate.do")
	public String productUpdate(@ModelAttribute("product") ProductVO vo, Model model) {
		model.addAttribute("productList", adminService.getProductList(vo));
		adminService.updateProduct(vo);
		return "productList";
	}
	
	//상품 삭제
	@RequestMapping("productDelete.do")
	public String productDelete(ProductVO vo) {
		adminService.deleteProduct(vo);
		return "productList";
	}
	
	
	//회원 Member Controller@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
	
	//회원 목록
	
	@RequestMapping("memberList.do")
	public String memberList(MemberVO vo, Model model, HttpServletRequest req, HttpServletResponse res){
		
		model.addAttribute("memberList", adminService.getMemberList(vo));
		//관리자만 접근 가능하게 세션관리, 로그인 화면으로 리턴
		HttpSession session = req.getSession();
		MemberVO member = (MemberVO)session.getAttribute("member");
		
		if(member == null || member.getVerify() != 9) {
			return "login";
		}
		return "memberList";
	}
		//---------------------------------------
		//회원 상세 조회
		@RequestMapping("getMember.do")
		public String getMember(MemberVO vo, Model model, HttpSession session){
			MemberVO loginSession = (MemberVO)session.getAttribute("member"); 
			String returnData = "../../index";
			if(loginSession.getVerify() == 9) { // 이렇게 주면 세션값에 관리자 값이 없으면 로그인 페이지로 가겠지
				model.addAttribute("member", adminService.getMember(vo));
				returnData = "getMember"; // 이런식으로 줘야 관리자라는 값이 있을 때만 지정해 줄 수 있어.
											 
			}
			return returnData;
		}
		
		//회원 수정
		@RequestMapping("memberUpdate.do")
		public String memberUpdate(@ModelAttribute("member") MemberVO vo, Model model,HttpServletRequest req, HttpServletResponse res) {
			model.addAttribute("memberList", adminService.getMemberList(vo));
			adminService.updateMember(vo);
			
			//관리자만 접근 가능하게 세션관리, 로그인 화면으로 리턴
			HttpSession session = req.getSession();
			MemberVO member = (MemberVO)session.getAttribute("member");
			
			if(member == null || member.getVerify() != 9) {
				return "login";
			}
			return "memberList";
		}
		
		//회원 삭제
		@RequestMapping("memberDelete.do")
		public String memberDelete(MemberVO vo,Model model, HttpSession session) {
			adminService.deleteMember(vo);
			model.addAttribute("memberList", adminService.getMemberList(vo));
			
			MemberVO loginSession = (MemberVO)session.getAttribute("member");
			String returnData = "../../memberList";
			if(loginSession.getVerify() == 9) { // 이렇게 주면 세션값에 관리자 값이 없으면 로그인 페이지로 가겠지
				model.addAttribute("member", adminService.getMember(vo));
				returnData = "memberList"; // 이런식으로 줘야 관리자라는 값이 있을 때만 지정해 줄 수 있어.
											 // 여기 등급이랑 getClass? 부분 바꿔줘봐 등급 준 것에 대해서
			}
			
			return returnData;
		}
		
		//판매 리스트
		@RequestMapping("salesList.do")
		public String salesList(Model model,HttpServletRequest req, HttpServletResponse res) {
			
			//관리자 세션 관리
			HttpSession session = req.getSession();
			MemberVO member = (MemberVO)session.getAttribute("member");
			
			if(member == null || member.getVerify() != 9) {
				return "login";
			}
			
			List<OrderVO> orderList = adminService.orderList();
			model.addAttribute("orderList", orderList);
			
			return "salesList";
		}
		
		//판매 상세 조회
		@RequestMapping("salesView.do")
		public String salesView(HttpServletRequest req, HttpServletResponse res, @RequestParam("n") String oID, OrderVO order, Model model) {
			
			//관리자 세션 관리
			HttpSession session = req.getSession();
			MemberVO member = (MemberVO)session.getAttribute("member");
			
			if(member == null || member.getVerify() != 9) {
				return "login";
			}
			
			order.setoID(oID);
			List<OrderListVO> orderView = adminService.orderView(order);
			model.addAttribute("orderView", orderView);
			
			
			return "salesView";
			
			
		}
		
		//배송 정보 (배송중 , 배송 완료) 버튼 요청시
		@RequestMapping(value="deliveryUpdate.do")
		public String delivery(HttpServletRequest req, HttpServletResponse res,OrderVO order) throws Exception {
			//관리자 세션 관리
			HttpSession session = req.getSession();
			MemberVO member = (MemberVO)session.getAttribute("member");
			
			if(member == null || member.getVerify() != 9) {
				return "login";
			}
			adminService.delivery(order);
			return "redirect:salesView.do?n=" +order.getoID();
			//return "salesView.do?n="+order.getoID();
//		return "salesView?n=" + order.getoID();
		}
		
		
		
		
}
