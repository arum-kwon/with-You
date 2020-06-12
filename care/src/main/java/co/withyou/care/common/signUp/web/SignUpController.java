package co.withyou.care.common.signUp.web;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import co.withyou.care.common.signUp.service.FamilyVO;
import co.withyou.care.common.signUp.service.SignUpService;


@Controller
public class SignUpController {
	
	@Autowired
	public SignUpService signUpService;

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

	@RequestMapping(value = "/checkEmailFamily.do", method = RequestMethod.GET)
	public String checkEmailFamily() throws Exception {	
		FamilyVO familyVO = new FamilyVO();
		familyVO.setFamilyEmail("seon2723@gmail");
		int a = signUpService.checkEmailFamily(familyVO);
		System.out.println(a);
		return "family/signUp/formFamily";
	}
	
}
