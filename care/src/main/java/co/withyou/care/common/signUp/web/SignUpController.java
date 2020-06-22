package co.withyou.care.common.signUp.web;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import co.withyou.care.common.signUp.service.FamilyVO;
import co.withyou.care.common.signUp.service.HelperVO;
import co.withyou.care.common.signUp.service.PatientVO;
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


	/**
	 * 보호자 아이디 중복확인
	 */
	@RequestMapping(value = "/checkEmail.do")
	@ResponseBody
	public int checkEmail(FamilyVO fVO, HelperVO hVO) throws Exception {
		int result = 0;
		
		if(fVO.getFamilyEmail() != null) {
			result = signUpService.checkEmailFamily(fVO);
		}else if(hVO.getHelperEmail() != null) {
			//result = signUpService.checkEmailFamily(hVO);
		}
		return result;
	}
	
	/**
	 * 보호자.환자정보 추가
	 */
	@RequestMapping(value = "/createMemberFamily.do")
	public String createMemberFamily(FamilyVO fVO, PatientVO pVO) throws Exception {
		signUpService.insertFamilyAndPatient(fVO, pVO);
		return "";
	}
		
}
