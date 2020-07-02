package co.withyou.care.admin.adminfamily.web;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.withyou.care.admin.adminfamily.service.AdminFamilyService;
import co.withyou.care.admin.adminfamily.service.AdminFamilyVo;

@Controller
public class AdminFamilyController {

	@Autowired
	AdminFamilyService adminfamilyService;
	
	@RequestMapping("/adminFamilyService.do")
	public String adminfamilyService (AdminFamilyVo adminfamilyVo, Model model) throws Exception {
		
		return "admin/family/ {	y";
		 
	}
	@RequestMapping("/adminfamilyList.do")
	public String adminfamilyList(AdminFamilyVo adminfamilyVo, Model model, HttpServletRequest request, HttpSession session) throws Exception {
		List<AdminFamilyVo> adfamilyVo = adminfamilyService.FamilyselectAll();
		model.addAttribute("familylist", adfamilyVo);
		
		List <Map> list = adminfamilyService.fmSelectList(adminfamilyVo);
		model.addAttribute("adminfamilyList", list);
		
		return "admin/family/adminfamilyList";
	}

}
