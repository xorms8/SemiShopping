package com.perfume.controller;

import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.perfume.service.ReviewService;
import com.perfume.service.ShopService;
import com.perfume.domain.*;

@Controller
public class ShopController {

	@Autowired
	private ShopService shopService;
	@Autowired
	private ReviewService reviewService;

	// Shop 페이지 요청
	@RequestMapping("shop.do")
	public void shop(ProductVO vo, Model model) {
		model.addAttribute("productList", shopService.getProductList(vo));
	}

	// Shop -> 상품 상세 페이지 요청
	@RequestMapping("productdetails.do")
	public void productDetalis(ProductVO vo, Model model) {
		ReviewVO vo1 = new ReviewVO();
		vo1.setpID(vo.getpID());
		model.addAttribute("product", shopService.getProduct(vo));
		model.addAttribute("reviewList", reviewService.getReviewList(vo1));
	}

	// 장바구니 추가 요청이 들어올때 ->addCart
	@ResponseBody
	@RequestMapping(value = "addCart.do", produces = "application/text;charset=UTF-8")
	public String addCart(CartVO vo, HttpSession session) throws Exception {
		String message = "카트 담기 실패";

		MemberVO member = (MemberVO) session.getAttribute("member");
		vo.setmID(member.getmID());

		shopService.addCart(vo);

		message = "카트 담기 성공";
		return message;
	}

	// 장바구니 -> cart.do 페이지 요청, CartVo에 담긴 DB 값 List를 뿌려줘야함
	@RequestMapping("cart.do")
	public String cart(Model model, HttpSession session) throws Exception {
		// 현재 비 로그인 상태는 null 에러 뜨는 상태

		MemberVO member = (MemberVO) session.getAttribute("member");
		String mID = member.getmID();
		// String mID=(String)session.getAttribute("mID");

		// 장바구니의 ID값을 가져와서 세션에 넘긴다
		if (mID != null) {
			List<CartListVO> cartList = shopService.cartList(mID);
			int result = shopService.TotalPrice(mID);
			// System.out.println(result);
			model.addAttribute("totalPrice", result);

			// 카트 리스트 출력하는 값
			model.addAttribute("cartList", cartList);
		} else {
			return "login";
		}
		return "cart";
		// 총합을 출력하는 값

	}

	// 장바구니 삭제
	@ResponseBody
	@RequestMapping(value = "deleteCart.do", produces = "application/text;charset=UTF-8")
	public int deleteCart(HttpSession session, @RequestParam(value = "chbox[]") List<String> chArr, CartVO vo)
			throws Exception {

		MemberVO member = (MemberVO) session.getAttribute("member");
		String mID = member.getmID();

		int result = 0;
		int cartNum = 0;

		if (member != null) {
			vo.setmID(mID);

			for (String i : chArr) {
				cartNum = Integer.parseInt(i);
				vo.setCartNUM(cartNum);
				shopService.deleteCart(vo);
			}
			result = 1;
		}
		return result;
	}

	// 주문 페이지
	@RequestMapping("orderForm.do")
	public String orderForm(Model model, HttpSession session) {

		MemberVO member = (MemberVO) session.getAttribute("member");
		String mID = member.getmID();

		// 장바구니의 ID값을 가져와서 세션에 넘긴다
		if (mID != null) {
			List<CartListVO> cartList = shopService.cartList(mID);
			int result = shopService.TotalPrice(mID);
			// System.out.println(result);
			model.addAttribute("totalPrice", result);

			// 카트 리스트 출력하는 값
			model.addAttribute("cartList", cartList);
		} else {
			return "login";
		}
		return "orderForm";
	}

	// 결제 요청이 들어왔을때
	@RequestMapping("payment.do")
	public String payment(HttpSession session, Model model, OrderVO order, OrderDetailsVO orderDetail)
			throws Exception {

		MemberVO member = (MemberVO) session.getAttribute("member");
		String mID = member.getmID();
		
		//주문번호 날짜 + 난수랜덤 6개 생성
		Calendar cal = Calendar.getInstance();
		int year = cal.get(Calendar.YEAR);
		String ym = year + new DecimalFormat("00").format(cal.get(Calendar.MONTH) + 1);
		String ymd = ym + new DecimalFormat("00").format(cal.get(Calendar.DATE));
		String subNum = "";

		for (int i = 1; i <= 6; i++) {
			subNum += (int) (Math.random() * 10);
		}

		String orderId = ymd + "_" + subNum;

		order.setoID(orderId);
		order.setmID(mID);

		shopService.orderInfo(order);
		orderDetail.setoID(orderId);
		shopService.orderInfo_Details(orderDetail);
		
		
		shopService.cartAllDelete(mID);
		
		return "resultPayment";
	}

	// 특정 유저의 주문내역 페이지 요청
	@RequestMapping("orderList.do")
	public String orderList(OrderVO order,Model model , HttpServletRequest req, HttpServletResponse res) {
		
		HttpSession session = req.getSession();
		MemberVO member = (MemberVO)session.getAttribute("member");
		
		
		if(member == null) {
			return "login";
		}
		String mID = member.getmID();
		order.setmID(mID);
		
		List<OrderVO> orderList = shopService.orderList(order);
		model.addAttribute("orderList", orderList);
		
		return "orderList";
	}
	
	// 주문 상세 목록 
	@RequestMapping("orderView.do")
	public String orderView(HttpServletRequest req, HttpServletResponse res, @RequestParam("n") String oID, OrderVO order, Model model) {
		HttpSession session = req.getSession();
		MemberVO member = (MemberVO)session.getAttribute("member");
		
		if(member == null) {
			return "login";
		}
		
		String mID = member.getmID();
		order.setmID(mID);
		order.setoID(oID);
		
		List<OrderListVO> orderView = shopService.orderView(order);
		model.addAttribute("orderView", orderView);
		
		
		return "orderView";
	}
	
	// 총합을 출력하는 값
	/*
	 * @RequestMapping("TotalPrice.do") public void TotalPrice(Model m) { int result
	 * = shopService.TotalPrice(); System.out.println(result);
	 * m.addAttribute("totalPrice",result); }
	 */

}
