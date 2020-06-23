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
		applyService.applyResultInsert(applyVo);
		
		return "family/main/FamilyMain";
	}
	
	//서비스 신청내역 메뉴
	@RequestMapping("applyList.do")
	public String applyList (ApplyVo applyVo, Model model, HttpServletRequest request, HttpSession session) throws Exception {
		//세션에서 값 받기
		session = request.getSession();
		FamilyVO familyVo = (FamilyVO) session.getAttribute("loginOk");
		applyVo.setFamilyNo(familyVo.getFamilyNo());
		
		//세션에서 받은 값으로 쿼리 실행, 리스트에 담기
		List <Map> list = applyService.getSelectList(applyVo);
		model.addAttribute("applyList", list);
		
		return "family/applyService/applyList";
	}
	
	//서비스 신청내역 -> 상세내역 메뉴
	@RequestMapping("applyDetail.do")
	public String applyDetail (@RequestParam("serviceNo") String sNo, Model model, ApplyVo applyVo) throws Exception {
		String serviceNo = sNo;
		System.out.println(serviceNo);
		
		Map map = applyService.getSelect(serviceNo);
		model.addAttribute("applyDetail", map);
		
		if(map.get("serviceStatus").equals("S02") || map.get("serviceStatus").equals("S03") || map.get("serviceStatus").equals("S04")) {
			Map map2 = applyService.getSelect2(serviceNo);
			model.addAttribute("applyDetail2", map2);
		}
		
		Map map3 = applyService.getSelect3(serviceNo);
		model.addAttribute("applyDetail3", map3);
		
		return "family/applyService/applyDetail";
	}
}
