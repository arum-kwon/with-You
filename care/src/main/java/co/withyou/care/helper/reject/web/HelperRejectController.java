package co.withyou.care.helper.reject.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import co.withyou.care.helper.confirm.service.ConfirmVo;
import co.withyou.care.helper.reject.service.HelperRejectService;
import co.withyou.care.helper.reject.service.RejectVo;

@Controller
public class HelperRejectController {

	@Autowired
	public HelperRejectService rejectservice;
	
	@RequestMapping("/reject.do")
	public String Reject(@RequestParam("serviceNo") int sNo,RejectVo vo,Model model) throws Exception{
		vo.setServiceNo(sNo);
		int result=0;
		rejectservice.RejectUpdate(vo);
		return null;
		
	}
}
