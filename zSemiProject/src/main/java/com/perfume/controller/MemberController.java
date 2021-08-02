package com.perfume.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.redirectedUrl;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.perfume.service.MemberService;
import com.perfume.domain.MemberVO;;

@Controller
public class MemberController {

	@Autowired
	MemberService memberService;

	// 회원 가입 첫 페이지 요청
	@RequestMapping("register.do")
	public void register() {

	}

	// 회원가입 요청이 들어왔을 때
	@RequestMapping("userInsert.do")
	public ModelAndView userInsert(MemberVO vo) {
		int result = memberService.userInsert(vo);

		String message = "가입되지 않았습니다.";
		if (result > 0)
			message = vo.getmNAME() + "님, 가입을 축하합니다.";

		ModelAndView mv = new ModelAndView();
		mv.setViewName("userJoin");
		mv.addObject("result", result);
		mv.addObject("message", message);
		return mv;
	}

	// 회원가입시 중복 아이디 체크
	@ResponseBody
	@RequestMapping("idCheck1.do")
	public String idCheck1(String mID) throws Exception {
		int result = memberService.idCheck1(mID);
		System.out.println("result =" + result);
		return String.valueOf(result);

	}

	// 로그인 페이지에 들어왔을 때
	@RequestMapping("login.do")
	public void login() {

	}

	// 로그인 요청이 들어왔을 때
	@RequestMapping("loginInsert.do")
	public String loginInsert(MemberVO vo, HttpSession session) {

		MemberVO result = memberService.idCheck_Login(vo);

		if (result == null || result.getmID() == null) {
			// 로그인 실패
			session.setAttribute("member", null);
			return "login";
		} else {
			// 로그인 성공
			session.setAttribute("member", result);
			session.setAttribute("userName", result.getmID());
			session.setAttribute("mPW", result.getmPW());
			session.setAttribute("mNAME", result.getmNAME());
			session.setAttribute("mEMAIL", result.getmEMAIL());
			session.setAttribute("mPHONE", result.getmPHONE());
			session.setAttribute("sessionTime", new Date());
			return "home";
		}

	}

	// 로그아웃 요청이 들어왔을 때 [세션 종료]컨트롤러
	@RequestMapping("logout.do")
	public String logout(HttpSession session) throws Exception {
		memberService.logout(session);

		return "home";
	}

	// Mypage(회원 수정, 주문내역 보기 전 사이트)
	@RequestMapping("myPage.do")
	public String preHandle(MemberVO vo, HttpServletRequest req, HttpServletResponse res) throws Exception {
		// 회원만 접근 가능하게 세션관리, 로그인 화면으로 리턴
		HttpSession session = req.getSession();
		MemberVO member = (MemberVO) session.getAttribute("member");

		if (member == null) {
			return "login";
		} else {
			return "myPage";
		}

	}

	// memberInfo 회원정보 수정 페이지
	@RequestMapping("memberInfo")
	public void memberInfo(HttpSession session, Model model) throws Exception {
		// 세션안에있는 객체 ID 정보저장
		String userName = (String) session.getAttribute("userName");
		session.getAttribute("mEMAIL");
		session.getAttribute("mPHONE");
		memberService.readMember(userName);
		System.out.println("controller값 가져오는중");
		// 서비스의 회원정보보기 메소드 호출
		MemberVO vo = memberService.readMember(userName);
		// 정보 저장후 페이지 이동
		model.addAttribute("userName", vo);
		model.addAttribute("mPW", vo);
		model.addAttribute("mNAME", vo);
		model.addAttribute("mEMAIL", vo);
		model.addAttribute("mPHONE", vo);
		System.out.println("vo == " + vo.getmEMAIL());
		System.out.println("vo == " + vo.getmNAME());
		System.out.println("vo == " + vo.getmPHONE());
		System.out.println("controller입니다.");

	}

	@RequestMapping(value = "userUpdateView")
	public String userUpdateView() throws Exception {
		return "userUpdate";
	}

	// 회원정보수정
	@RequestMapping(value = "userUpdate")
	public String userUpdate(HttpSession session, MemberVO vo) throws Exception {
		memberService.updateMember(vo);
		session.invalidate(); // 세션 초기화
		// model.addAttribute("userName",memberService.readMember((String)session.getAttribute("mID")));
		System.out.println("update컨트롤임");
		return "home"; //0802 수정
	}

	// 회원탈퇴
	@RequestMapping(value = "userDelete")
	public String userDelete(MemberVO vo, HttpSession session, RedirectAttributes rttr) throws Exception {
		System.out.println("11111111111111111111"); // 값 확인
		MemberVO member = (MemberVO) session.getAttribute("member");
		System.out.println("11111111111111111112");
		String userName = (String) session.getAttribute("userName");
		// 세션에있는 비밀번호
		System.out.println("11111111111111111113");
		String sessionPass = member.getmPW();
		System.out.println("11111111111111111114");
		System.out.println("sessionPass == " + sessionPass);
		System.out.println("11111111111111111115");// 값 확인
		MemberVO vo1 = memberService.readMember(userName);
		System.out.println("vo1.pw ==" + vo1.getmPW());
		// vo로 들어오는 비밀번호
		String voPass = vo.getmPW();
		System.out.println(voPass); // 값 확인
		if (!(sessionPass.equals(voPass))) { // 비밀번호가 같지않을경우 리턴
			rttr.addFlashAttribute("msg", false);
			return "memberInfo";
		}
		memberService.deleteMember(vo);
		session.invalidate(); // 세션 초기화
		return "home";
	}

	// 아이디찾기
	@RequestMapping("userFindId.do")
	public String userFindId(HttpServletResponse response, @RequestParam(defaultValue = "null") String mEMAIL,
			Model model) throws Exception {

		model.addAttribute("mID", memberService.userFindId(response, mEMAIL));

		return "userFindId";
	}

	// 아이디 찾기 뷰페이지
	@RequestMapping(value = "userFindIdView")
	public void userFindIdView() {
	}

	// 비밀번호찾기
	@RequestMapping("userFindPw.do")
	public String userFindPw(HttpServletResponse response, @RequestParam(defaultValue = "null") String mID,
			String mEMAIL, Model model) throws Exception {
		model.addAttribute("mVO", memberService.userFindPw(response, mID, mEMAIL));
		// model.addAttribute("mEMAIL",memberService.userFindPw(response, mID, mEMAIL));
		return "userFindPw";
	}

	// 비밀번호 찾기 뷰페이지
	@RequestMapping(value = "userFindPwView")
	public void userFindPwView() {

	}

	// 기타 링크 요청

	@RequestMapping("about.do")
	public void about() {

	}

}
