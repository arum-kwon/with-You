package co.withyou.care.admin.adminpatient.web;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.withyou.care.admin.adminpatient.service.AdminPatientService;
import co.withyou.care.admin.adminpatient.service.AdminPatientVo;

@Controller
public class AdminPatientController {

	@Autowired
	AdminPatientService adminpatientService;
	
	@RequestMapping("/adminpatientList.do")
	public String adminpatientListString(AdminPatientVo adminpatientVo, Model model) throws Exception {
		List<AdminPatientVo> adpatientVo = adminpatientService.PatientselectAll();
		model.addAttribute("patientlist", adpatientVo);
		
		return "admin/member/adminpatientList";
	}

}
