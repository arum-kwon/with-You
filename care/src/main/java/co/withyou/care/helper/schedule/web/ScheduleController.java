package co.withyou.care.helper.schedule.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import co.withyou.care.helper.schedule.service.ApplyVo;
import co.withyou.care.helper.schedule.service.ScheduleService;

@Controller
public class ScheduleController {
	@Autowired
	private ScheduleService scheduleService;
	
//	@RequestMapping("/schedule.do")
//	HashMap<String, Object> Schedule(HttpServletRequest request, ApplyVo vo) throws Exception {
//		HashMap<String, Object> map = new HashMap<String, Object>();
//		HttpSession session = request.getSession();
//		List<Map> schedule = scheduleService.getSchedule(vo);
//		map.put("shedule", schedule);
//		return map;
//	}
	@RequestMapping("/scheduleEx.do")
	public String ScheduleEx() {
		return "helper/Schedule/Schedule";
		
	}
}
