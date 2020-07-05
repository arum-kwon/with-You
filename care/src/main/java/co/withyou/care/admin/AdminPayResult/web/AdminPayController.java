package co.withyou.care.admin.AdminPayResult.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.withyou.care.admin.AdminPayResult.service.AdminPayService;
import co.withyou.care.admin.AdminPayResult.service.AdminPayVo;


@Controller
public class AdminPayController {
 
	@Autowired
	AdminPayService adminpayService;
	
	@RequestMapping("/adminpayService")
	public String adminfamilyService (AdminPayVo adminpayVo, Model model) throws Exception	{
		
		return "admin/service/adminpayService";
	}
	
	@RequestMapping("/adminPayList.do") //jsp 
	public String adminpayList(AdminPayVo adminpayVo, Model model) throws Exception {
		List<AdminPayVo> adpayVo = adminpayService.AdPayselectAll();
		model.addAttribute("paylist" ,adpayVo);
		
		for(AdminPayVo vo : adpayVo) {
			System.out.println(vo);	
		}
		
		return "admin/payresult/AdminPayList";
		
}
}