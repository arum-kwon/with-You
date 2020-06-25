package co.withyou.care.helper.schedule.web;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import co.withyou.care.helper.Login.service.HelperVO;
import co.withyou.care.helper.schedule.service.ApplyVo;
import co.withyou.care.helper.schedule.service.ScheduleService;

@Controller
public class ScheduleController {
	@Autowired
	private ScheduleService scheduleService;
	

	@RequestMapping("/scheduleList.do")
	public ModelAndView scheduleList(ModelAndView mav, ApplyVo vo, HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
		HelperVO getSession = (HelperVO) session.getAttribute("loginOk");
		vo.setHelperNo(getSession.getHelperNo());
		
		List<Map> map = scheduleService.getSchedule(vo);
		
		mav.addObject("sceduleList", map);
		mav.setViewName("helper/Schedule/scheduleList");
		return mav;
		
	}

	
	
	
	
} // end of Class
