package co.arum.prj.user.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import co.arum.prj.common.MobileCheck;
import co.arum.prj.user.service.MemberService;
import co.arum.prj.user.service.MemberVO;

@Controller
public class MembarController {
	
	@Autowired
	private MemberService memberService;

	@Autowired
	private MobileCheck mc;
	
	@RequestMapping("/memberList.do")
	public ModelAndView memberList(ModelAndView mv, HttpServletRequest request) throws Exception {
		
		
		List<MemberVO> list = memberService.getMemberAll();
		mv.addObject("list", list);
		mv.setViewName("member/memberList");
		
		if(mc.isMobile(request)) {
			mv.setViewName("member/mobile");
		}
			
		return mv;
	}
}
