package co.withyou.care.helper.serviceHistory.web;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import co.withyou.care.helper.serviceHistory.service.ServiceHistoryService;
import co.withyou.care.helper.serviceHistory.service.ServiceSummaryVO;

@Controller
public class ServiceHistoryController {
	
	@Autowired
	ServiceHistoryService shService;
	
	//서비스 완료된 서비스 가저오기
	@RequestMapping(value = "/serviceListH.do")
	public ModelAndView serviceListH(ModelAndView mv) {
		ArrayList<ServiceSummaryVO> list = shService.getServiceList();
		mv.addObject("list", list);
		mv.setViewName("helper/serviceHistory/serviceList");
		
		return mv;
	}
}
