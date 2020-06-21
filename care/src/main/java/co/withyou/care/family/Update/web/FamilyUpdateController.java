package co.withyou.care.family.Update.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.withyou.care.family.Update.service.FamilyUpdateService;
import co.withyou.care.family.Update.service.FamilyUpdateVo;

@Controller
public class FamilyUpdateController {

		@Autowired
		private FamilyUpdateService updateservice;
		
		@RequestMapping("/familygetSelect.do")
		public String familygetSelect(FamilyUpdateVo vo, HttpServletRequest request, Model model) throws Exception{
			HttpSession session = request.getSession();
			vo = updateservice.getSelect(vo);
			model.addAttribute("getSelect",vo);
			return "family/update/familygetSelect";
			
		}
		
		@RequestMapping("/familyUpdate.do")
		public String familyUpdate(FamilyUpdateVo vo) throws Exception {
			updateservice.Update(vo);
			return "";
		}
}
