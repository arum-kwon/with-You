package co.withyou.care.common.pay.web;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import co.withyou.care.common.pay.service.PayService;
import co.withyou.care.common.pay.service.PayVo;


@Controller
public class PayController {

	@Autowired
	public PayService payService;
	public PayVo payVo;
	
	
	@RequestMapping("pay.do")
	public String pay(HttpSession session, HttpServletRequest request) {
		
		
		return "common/pay/pay";
	}
	
	@RequestMapping(value="savePayResult.do" , method=RequestMethod.POST)
	@ResponseBody
	public PayVo savePayResult (PayVo payVo) throws Exception {
		System.out.println(payVo);
		payService.payResultInsert(payVo);
		
		return payVo;
	}
	
	@RequestMapping("paySuccess.do")
	public String paySuccess () {
		
		
		return "common/pay/paySuccess";
	}
}
