package co.withyou.care.helper.serviceHistory.web;


import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import co.withyou.care.helper.Login.service.HelperVO;
import co.withyou.care.helper.serviceHistory.service.ServiceHistoryService;

@Controller
public class ServiceHistoryController {
	
	@Autowired
	ServiceHistoryService historyService;
	
	//서비스 완료된 서비스 가저오기
	@RequestMapping("/serviceHistory.do")
	public ModelAndView serviceListH(ModelAndView mav, HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
		HelperVO getSession = (HelperVO) session.getAttribute("loginOk");
		int helperNo = getSession.getHelperNo();
		
		Map map = historyService.getList(helperNo);
		
		mav.addObject("serviceHistoryList", map);
		mav.setViewName("helper/serviceHistory/serviceHistory");
		
		return mav;
	}
}
