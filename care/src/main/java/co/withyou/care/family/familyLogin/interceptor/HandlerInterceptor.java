package co.withyou.care.family.familyLogin.interceptor;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;

public class HandlerInterceptor implements org.springframework.web.servlet.HandlerInterceptor {
	// controller로 보내기 전에 처리하는 인터셉터
		// 반환이 false라면 controller로 요청을 안함
		// 매개변수 Object는 핸들러 정보를 의미한다. ( RequestMapping , DefaultServletHandler ) 
		@Override
		public boolean preHandle(
				HttpServletRequest request, HttpServletResponse response,
				Object obj) throws Exception {
			
			System.out.println("MyInterCeptor - preHandle");
			return false;
		}

		// controller의 handler가 끝나면 처리됨
		@Override
		public void postHandle(
				HttpServletRequest request, HttpServletResponse response,
				Object obj, ModelAndView mav) throws Exception {			
			System.out.println("자동로그인");
	  HttpSession session = request.getSession();
	  ModelMap modelMap = mav.getModelMap();

	  if(modelMap.get("customCheck") != null) {
		  Cookie loginCookie = new Cookie("loginCookie",session.getId());
		  loginCookie.setPath("/");
		  loginCookie.setMaxAge(60*60*24*7);
		  //담기
		  response.addCookie(loginCookie);
	}
}

		// view까지 처리가 끝난 후에 처리됨
		@Override
		public void afterCompletion(
				HttpServletRequest request, HttpServletResponse response,
				Object obj, Exception e)
				throws Exception {
		}
}
