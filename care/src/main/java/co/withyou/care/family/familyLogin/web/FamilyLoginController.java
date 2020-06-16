

package co.withyou.care.family.familyLogin.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import co.withyou.care.family.familyLogin.service.FamilyService;
import co.withyou.care.family.familyLogin.service.FamilyVO;


@Controller
public class FamilyLoginController {

	 @Autowired
	 private FamilyService service;
	 
	  //01.로그인폼 가기
	  
	  @RequestMapping("/familyLogin.do") 
	  public String familyLogin() { 
		  return "family/login/FamilyLogin";
		}
	 
	 //02. 이메일 하나 조회
	  @RequestMapping("/familyGetSelect")
	  public String familyGetSelect(Model model, FamilyVO vo) throws Exception {
		  model.addAttribute("getSelect", service.getSelect(vo));
		  return "family/login/FamilyLogin";
	  }
	
	  
	  @RequestMapping("/loginCheck.do")
	  public String loginCheck(FamilyVO vo, HttpServletRequest request, Model model) throws Exception {
		  HttpSession session = request.getSession();
		  FamilyVO loginCheck = service.getSelect(vo);
		
		  if(loginCheck == null) {
			  return "family/login/FamilyLogin";
		  } else if(vo.getFamilyPw().equals(loginCheck.getFamilyPw())) {
			  session.setAttribute("loginOk", loginCheck);
			  return "family/main/FamilyMain";
		  } else {
			  return "family/login/FamilyLogin";
		  }
		  
	  }
	  
	  
	  
	  
	  
	  
}
