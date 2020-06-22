package co.withyou.care.patient.findload.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import co.withyou.care.patient.Login.service.PatientVO;
import co.withyou.care.patient.findload.service.FamilyVO;
import co.withyou.care.patient.findload.service.patientCallService;



@Controller
public class patientFindLoadController {
	
	@Autowired
	patientCallService patientCallservice;
	
	@RequestMapping("/findload.do")
	public ModelAndView getTel(FamilyVO vo,HttpServletRequest request) throws Exception {
		
		HttpSession session = request.getSession();
		PatientVO name =  (PatientVO) session.getAttribute("loginOk");
		vo.setFamilyNo(name.getFamilyNo());
		vo = patientCallservice.getSelect(vo);
		System.out.println(vo.getFamilyTel());
		session.setAttribute("familyVO", vo);

		ModelAndView mav = new ModelAndView();
		mav.setViewName("patient/findLoad/patientTestLoadmap");
	
		
		return mav;		
	}	


	
}
