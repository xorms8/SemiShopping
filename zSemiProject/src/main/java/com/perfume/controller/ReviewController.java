package com.perfume.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.perfume.domain.ProductVO;
import com.perfume.domain.ReviewVO;
import com.perfume.service.ReviewService;
import com.perfume.service.ShopService;

@Controller
public class ReviewController {
	
	@Autowired
	private ReviewService reviewService;
	private ShopService shopService;
	
	
	// 글 목록보기
	@RequestMapping("getReviewList.do")
	public void getReviewList(ReviewVO vo,Model model) {
		model.addAttribute("reviewList",reviewService.getReviewList(vo));
				
	}
	// 글 입력하기
	@RequestMapping("insertReview.do")
	public String insertReview(ReviewVO vo ,HttpSession session) {
		//아이디 유효성 검사
		String id = null;
		id = (String) session.getAttribute("userName");
		if( id==null) {
			return "login";
		}
		vo.setmID(id);
		reviewService.insertReview(vo);
		System.out.println("id값" + id);
		return "redirect:productdetails.do?pID=" + vo.getpID();
	}
	
	//글 삭제하기
	   @RequestMapping(value="deleteReview.do")
	   public String deleteReview(ReviewVO vo,HttpSession session, Model model, ProductVO vo2) {
	      String id =(String) session.getAttribute("userName");
	      if(id == null) {
	         return "login";
	      }
	      vo.setmID(id);
	      reviewService.deleteReview(vo);
	      System.out.println("컨트롤러인데 아이디값 넘어오는거확인" + id);
	      return "shop";
	   }
	
	// 글 수정하기
	@RequestMapping(value="updateReview.do")
	public String updateReview(HttpSession session,ReviewVO vo) {
		reviewService.updateReview(vo);
		System.out.println("updatereview 컨트롤");
		return "shop";
	}
	@RequestMapping(value="readReview.do")
	public void readReview(HttpSession session, Model model) throws Exception {
		String userName = (String) session.getAttribute("username");
		session.getAttribute("rTITLE");
		session.getAttribute("rCONTENT");
		ReviewVO vo = reviewService.readReview(userName);
		model.addAttribute("rTITLE",vo);
		model.addAttribute("rCONTENT",vo);
	}
}
