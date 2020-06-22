package co.withyou.care.family.apply.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import co.withyou.care.family.apply.service.ApplyService;
import co.withyou.care.family.apply.service.ApplyVo;

@Controller
public class ApplyController {

	@Autowired
	public ApplyService applyService;
	
	@RequestMapping("applyService.do")
	public String applyService (ApplyVo applyVo) throws Exception {
		System.out.println("applyVo"+applyVo);
		applyService.applyResultInsert(applyVo);
		
		return "family/applyService/saveApplyResult";
	}
}
