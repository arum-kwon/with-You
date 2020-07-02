package co.withyou.care.admin.serviceapply.web;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.withyou.care.admin.serviceapply.service.AdminServiceApply;
import co.withyou.care.admin.serviceapply.service.AdminApplyVo;

@Controller
public class AdminApplyController {

	@Autowired
	AdminServiceApply adminserviceApply;

	@RequestMapping("/AdminServiceApply.do")
	public String adminapplyService(AdminApplyVo adminapplyVo, Model model) throws Exception {

		return "admin/serviceapply/adminapply";
	}

	@RequestMapping("/AdminApplyList.do")
	public String adminapplyList(AdminApplyVo adminapplyVo, Model model, HttpServletRequest request, HttpSession session) throws Exception {
	List<AdminApplyVo> adapplyVo = adminserviceApply.AdminSelectAll();
	model.addAttribute("applyList", adapplyVo);
	

	return "admin/serviceapply/AdminApplyList";
	}

}
