package co.withyou.care.family.patientLoc.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.withyou.care.common.geoLocation.service.PatientLocVO;
import co.withyou.care.family.Login.service.FamilyVO;
import co.withyou.care.family.patientLoc.service.PatientLocService;

@Controller
public class PatientLocController {
	@Autowired
	private PatientLocService locService;
		
	@RequestMapping("/patientLoc.do")
	public String LocGetSelect(PatientLocVO vo,Model model, HttpServletRequest request) throws Exception {
		//세션을 통해 환자의 번호를 가져옴
		FamilyVO family = (FamilyVO)request.getSession().getAttribute("loginOk");
		vo.setPatientNo(locService.getPatientNo(family.getFamilyNo()));
		
		vo = locService.getLoc(vo);
		model.addAttribute("getLoc",vo);
		return "family/patientLoc/PatientLoc";
	}
}
