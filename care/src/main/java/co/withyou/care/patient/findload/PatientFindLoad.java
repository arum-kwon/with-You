package co.withyou.care.patient.findload;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class PatientFindLoad {
	
	
	@RequestMapping("/findload.do")
	public ModelAndView getTel(HttpServletRequest request) throws Exception {
		
		HttpSession session = request.getSession();
		session.setAttribute("tell", "010-4691-7957");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("patient/findLoad/patientTestLoadmap");
		
		
		return mav;		
	}	


	
}
