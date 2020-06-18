package co.withyou.care.family.familyLogin.interceptor;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.web.util.WebUtils;

import co.withyou.care.family.familyLogin.service.FamilyService;
import co.withyou.care.family.familyLogin.service.FamilyVO;

public class PreHandlerInterceptor extends HandlerInterceptorAdapter {
	
	@Autowired
	FamilyService service;
	
	@Override
	public boolean preHandle(
			HttpServletRequest request, HttpServletResponse response,
			Object obj) throws Exception {
		
		Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");
		if(loginCookie != null) {		
			FamilyVO vo = new FamilyVO();
			Cookie loginEmailCookie = WebUtils.getCookie(request, "loginEmail");
			vo.setFamilyEmail(loginEmailCookie.getValue());		
			request.getSession().setAttribute("loginOk", service.getSelect(vo));	
			response.sendRedirect("familyMain.do");
			
		} 

		return true;
	}

} //end of Class
