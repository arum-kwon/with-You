package co.withyou.care.family.Login.interceptor;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import co.withyou.care.family.Login.service.FamilyVO;


public class PostHandlerInterceptor extends HandlerInterceptorAdapter {

	
	// controller의 handler가 끝나면 처리됨
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response,Object obj, ModelAndView mav) throws Exception {			
		HttpSession session = request.getSession();
		ModelMap modelMap = mav.getModelMap();
		FamilyVO vo = new FamilyVO();
		vo = (FamilyVO) session.getAttribute("loginOk");
		
	  if(modelMap.get("customCheck") != null) {
		  Cookie loginCookie = new Cookie("floginCookie",session.getId());
		  loginCookie.setPath("/");
		  loginCookie.setMaxAge(60*60*24*7);
		  //담기
		  response.addCookie(loginCookie);

		  // 이메일 쿠키에 저장 
		  Cookie EmailCookie = new Cookie("floginEmail", vo.getFamilyEmail()); 
		  EmailCookie.setPath("/");
		  EmailCookie.setMaxAge(60*60*24*7); 
		  //담기 
		  response.addCookie(EmailCookie); 
		  
		 
			 
	  }
	}

}
