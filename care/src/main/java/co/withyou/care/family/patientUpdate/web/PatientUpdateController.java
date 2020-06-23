package co.withyou.care.family.patientUpdate.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.withyou.care.family.patientUpdate.service.PatientUpdateService;
import co.withyou.care.patient.Login.service.PatientVO;

@Controller
public class PatientUpdateController {

	@Autowired
	private PatientUpdateService Pupdateservice;
	
	@RequestMapping("/patientgetSelect.do")
	public String PatientGetSelect(PatientVO vo, HttpServletRequest request, Model model) throws Exception{
		HttpSession session = request.getSession();
		vo=(PatientVO)session.getAttribute("loginOk");
		//vo = Pupdateservice.getSelect(vo);
		model.addAttribute("getSelect",vo);
		return "family/update/patientUpdate";
	}
	
	@RequestMapping("/patientUpdate.do")
	public String PatientUpdate(PatientVO vo,HttpServletRequest request) throws Exception{
		int result = Pupdateservice.Update(vo);
		if(result==1) {
			
		}else {
			return "";
		}
		return "patientgetSelect.do";
	}
	
}
