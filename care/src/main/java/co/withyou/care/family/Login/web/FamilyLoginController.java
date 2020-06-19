

package co.withyou.care.family.Login.web;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.util.WebUtils;

import co.withyou.care.family.Login.service.FamilyService;
import co.withyou.care.family.Login.service.FamilyVO;


@Controller
public class FamilyLoginController {

	 @Autowired
	 private FamilyService service;
	 
	  // 로그인폼 가기	  
	  @RequestMapping("/familyLogin.do") 
	  public String familyLogin() { 
		  return "family/login/FamilyLogin";
		}
	 
	  @RequestMapping("/familyMain.do")
	  public String familyMain() {
		  return "family/main/FamilyMain";
	  }
	  
	 // 이메일 하나 조회 for 자동로그인기능
	  @RequestMapping("/familyGetSelect")
	  public String familyGetSelect(Model model, FamilyVO vo) throws Exception {
		  model.addAttribute("getSelect", service.getSelect(vo));
		  return "family/login/FamilyLogin";
	  }
	
	  // 로그인 유효성검사
	  @RequestMapping("/loginCheck.do")
	  public String loginCheck(FamilyVO vo, HttpServletRequest request, Model model) throws Exception {
		  HttpSession session = request.getSession();
		  FamilyVO loginCheck = service.getSelect(vo);
		  model.addAttribute("customCheck", request.getParameter("customCheck"));
		
		  if(loginCheck == null) {
			  model.addAttribute("noEmail", false);
			  return "family/login/FamilyLogin";
			  
		  } else if(vo.getFamilyPw().equals(loginCheck.getFamilyPw())) {
			  session.setAttribute("loginOk", loginCheck);	
			  session.setAttribute("userType", "f");	// 로그인시 나타나는 이름 설정
			  model.addAttribute("loginOk", loginCheck);	// 로그인시 나타나는 이름 설정
			  return "redirect:familyMain.do";
			  
		  } else {
			  model.addAttribute("noMember", false);			  
			  return "family/login/FamilyLogin";
		  }  		  
	  }
	  
	 //로그아웃
	  @RequestMapping("/logout.do")
	    public String logout(HttpSession session, HttpServletRequest request, HttpServletResponse response) {
		/*
		 * Object obj = session.getAttribute("loginOk"); if(obj != null) {
		 * session.removeAttribute("loginOk"); session.invalidate(); // 세션초기화
		 * 
		 * Cookie emailCookie = WebUtils.getCookie(request, "loginEmail");
		 * 
		 * if(emailCookie != null) { emailCookie.setPath("/"); // 모든 경로에서 삭제 됬음을 알린다.
		 * emailCookie.setMaxAge(0); // 쿠키의 expiration 타임을 0으로 하여 없앤다.
		 * response.addCookie(emailCookie);
		 * 
		 * }
		 * 
		 * }
		 */
		  
//		  Cookie[] cookies = request.getCookies(); // 모든 쿠키의 정보를 cookies에 저장

		  	//if (cookies != null) { // 쿠키가 한개라도 있으면 실행
	
				//for (int i = 0; i < cookies.length; i++) {
	
					//cookies[i].setMaxAge(0); // 유효시간을 0으로 설정
	
					//response.addCookie(cookies[i]); // 응답 헤더에 추가
	
				//}
	
			//}
			
			session.invalidate();
	      
	      return "common/home/home"; // 로그아웃 후 로그인화면으로 이동
	  }	  

} // end of Class
