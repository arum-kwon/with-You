package co.withyou.care.helper.Login.interceptor;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.web.util.WebUtils;

import co.withyou.care.family.Login.service.FamilyService;
import co.withyou.care.family.Login.service.FamilyVO;
import co.withyou.care.helper.Login.service.HelperService;
import co.withyou.care.helper.Login.service.HelperVO;

public class PreHandlerInterceptor extends HandlerInterceptorAdapter {
	
	@Autowired
	HelperService helperservice;
	
	@Override
	public boolean preHandle(
			HttpServletRequest request, HttpServletResponse response,
			Object obj) throws Exception {
		
		Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");
		if(loginCookie != null) {		
			HelperVO vo = new HelperVO();
			Cookie loginEmailCookie = WebUtils.getCookie(request, "loginEmail");
			vo.setHelperEmail(loginEmailCookie.getValue());		
			request.getSession().setAttribute("loginOk", helperservice.getSelect(vo));	
			response.sendRedirect("helperMain.do");
			
		} 

		return true;
	}

} //end of Class
