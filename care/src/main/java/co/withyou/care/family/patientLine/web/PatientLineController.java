package co.withyou.care.family.patientLine.web;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.withyou.care.common.geoLocation.service.PatientLocVO;
import co.withyou.care.family.patientLine.service.PatientLineService;

@Controller
public class PatientLineController {
	@Autowired
	public PatientLineService pservice;

	@RequestMapping("/patientLine.do")
	public String GpsList(HttpServletRequest request,PatientLocVO vo,Model model) throws Exception {
		//int a = request.getParameter("아이디");
	
			//jsp의 name 태그가 vo의 파라미터이름과같으면 자동으로 입력"2020-12-123"
			List<Map>list = pservice.getGpsList(vo);
			model.addAttribute("GpsLine",list);	
			return "family/PatientLine/PatientLine";
		
	
	}
}
