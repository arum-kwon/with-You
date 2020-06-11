package co.withyou.care.patient.calltofamily;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;

public class CallController {
	
	@Autowired
	private CallService callService;
	
	public ModelAndView boardList(ModelAndView mav) throws Exception {
		List<CallVO> list = callService.getCallList();
		mav.addObject("callList", list);
		mav.setViewName("patient/hjs/patientTestLoadmap");
		return mav;
		
	}
}
