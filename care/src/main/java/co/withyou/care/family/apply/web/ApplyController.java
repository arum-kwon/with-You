package co.withyou.care.family.apply.web;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import co.withyou.care.family.Login.service.FamilyVO;
import co.withyou.care.family.apply.service.ApplyService;
import co.withyou.care.family.apply.service.ApplyVo;

@Controller
public class ApplyController {

	@Autowired
	public ApplyService applyService;
	
	//서비스 신청하기 메뉴
	@RequestMapping("applyService.do")
	public String applyService (ApplyVo applyVo) throws Exception {
		System.out.println("applyVo"+applyVo);
		applyService.applyResultInsert(applyVo);
		
		return "family/applyService/saveApplyResult";
	}
	
	//서비스 신청내역 메뉴
	@RequestMapping("applyList.do")
	public String applyDetail (ApplyVo applyVo, Model model, HttpServletRequest request, HttpSession session) throws Exception {
		session = request.getSession();
		FamilyVO familyVo = (FamilyVO) session.getAttribute("loginOk");
		applyVo.setFamilyNo(familyVo.getFamilyNo());
		List <Map> list = applyService.getSelectList(applyVo);
		model.addAttribute("applyList", list);
		
		return "family/applyService/applyList";
	}
	
	//서비스 신청내역 -> 상세내역 메뉴
	@RequestMapping("applyDetail.do")
	public String applyDetail (@RequestParam("serviceNo") String sNo) {
		String serviceNo = sNo;
		System.out.println(serviceNo);
		
		return "family/applyService/applyDetail";
	}
}
