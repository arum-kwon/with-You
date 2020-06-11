package co.withyou.care.common.signUp.web;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class SignUpController {
	
	/**
	 * 보호자 회원가입 폼으로 이동
	 */
	@RequestMapping(value = "/signUpFormFamily.do")
	public String goFormFamily() {
		return "family/signUp/formFamily";
	}
	/**
	 * 간병인 회원가입 폼으로 이동
	 */
	@RequestMapping(value = "/signUpFormHelper.do")
	public String goFormHelper() {
		
		return "helper/signUp/formHelper";
	}
}
