package co.withyou.care.admin.adminfamily.web;

import java.util.List;

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
	
	@RequestMapping("/adminfamilyList.do")
	public String adminfamilyList(AdminFamilyVo adminfamilyVo, Model model) throws Exception {
		List<AdminFamilyVo> adfamilyVo = adminfamilyService.selectAll();
		model.addAttribute("familylist", adfamilyVo);
		
		return "admin/member/adminfamilyList";
	}

}
