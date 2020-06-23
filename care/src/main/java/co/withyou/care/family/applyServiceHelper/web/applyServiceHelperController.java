package co.withyou.care.family.applyServiceHelper.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class applyServiceHelperController {

	@RequestMapping("/applyHelper.do")
	public String applyHelper() {
		return "family/applyHelper/applyHelperService";
	}
	
	
}
