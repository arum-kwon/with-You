package co.withyou.care.helper.taltwoi.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import co.withyou.care.helper.Login.service.HelperVO;
import co.withyou.care.helper.taltwoi.service.HelperTaltwoiVo;
import co.withyou.care.helper.taltwoi.service.TaltwoiService;

@Controller
public class TaltwoiController {

	@Autowired
	private TaltwoiService taltwoiservice;
	
	@RequestMapping("/taltwoi.do")
	public String HelperTaltwoi(HelperTaltwoiVo vo,HttpServletRequest request,Model model,RedirectAttributes rttr) throws Exception {
		
		HttpSession session = request.getSession();
		HelperVO loginVo=(HelperVO) session.getAttribute("loginOk");
		String sessionPw = loginVo.getHelperPw();
		String voPw=vo.getHelperPw();
		vo.setHelperNo(loginVo.getHelperNo());
		if(!(sessionPw.equals(voPw))) {
			rttr.addFlashAttribute("msg",false);
			return "redirect:/helper/TalTowi/TalTowi";
		}
		taltwoiservice.HelperTaltowi(vo);
		session.invalidate();
		return "redirect:/";
		
	}
}
