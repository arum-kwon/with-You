package co.withyou.care.helper.confirm.web;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import co.withyou.care.helper.confirm.service.ConfirmService;
import co.withyou.care.helper.confirm.service.ConfirmVo;

@Controller
public class ConfirmContriller {
	@Autowired
	public ConfirmService confirmservice;
	
	@RequestMapping("/confirm.do")
	public String Confrim(@RequestParam("serviceNo") int sNo,ConfirmVo vo,Model model) throws Exception{
		//confirmservice.ConfirmUpdate(vo);
		vo.setServiceNo(sNo);
		int result = 0;
		result = confirmservice.ConfirmUpdate(vo);
		model.addAttribute("confirm",result);
		
		return null;
		
		
	}
}
