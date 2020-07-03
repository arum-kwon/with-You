package co.withyou.care.admin.AdminPayResult.web;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
	
	@RequestMapping("/AdminPayList.do") //jsp 
	public String adminpayList(AdminPayVo adminpayVo, Model model, HttpServletRequest request, HttpSession session) throws Exception {
		List<AdminPayVo> adpayVo = adminpayService.AdPayselectAll();
		model.addAttribute("paylist" ,adpayVo);
		
		List<Map> list = adminpayService.paySelectList(adminpayVo);
		model.addAttribute("AdminPayList",list);
		
		
		return "admin/adminpay/AdminPayList";
		
}
}