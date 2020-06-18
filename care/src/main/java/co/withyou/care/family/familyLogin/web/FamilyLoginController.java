

package co.withyou.care.family.familyLogin.web;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import co.withyou.care.family.familyLogin.service.FamilyService;
import co.withyou.care.family.familyLogin.service.FamilyVO;


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
	  
	 // 이메일 하나 조회
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
			  model.addAttribute("loginOk", loginCheck);	
			  return "redirect:familyMain.do";
		  } else {
			  model.addAttribute("noMember", false);			  
			  return "family/login/FamilyLogin";
		  }  		  
	  }
	  
	 //로그아웃
	  @RequestMapping("/logout.do")
	    public String logout(HttpSession session) {
	        session.invalidate(); // 세션 초기화
	        return "family/login/FamilyLogin"; // 로그아웃 후 로그인화면으로 이동
	  }	  

} // end of Class
