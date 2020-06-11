package co.withyou.care.patient.findload;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PatientFindLoad {

	@RequestMapping("/findload.do")
	public String findload(Model model) {
	
		
		return "main/patient/hjs/patientTestLoadmap";
 }
	
}
