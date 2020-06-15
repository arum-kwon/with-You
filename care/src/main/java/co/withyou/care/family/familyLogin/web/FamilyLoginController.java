package co.withyou.care.family.familyLogin.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FamilyLoginController {

	  //01.로그인화면

	  @RequestMapping("/familyLogin.do") 
	  public String familyLogin() { 
		  return "family/login/FamilyLogin";
		}
}
