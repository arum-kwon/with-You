package co.arum.prj.common;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Component;

@Component("mc")
public class MobileCheck {
	public boolean isMobile(HttpServletRequest request) {
		String  userAgent = request.getHeader("user-agent");
		boolean mobile1 = userAgent.matches(".*(LG|iPhone|iPod|Android|Windows CE|BlackBerry|Symbian|Windows Phone|webOS).*");
		boolean mobile2 = userAgent.matches(".*(SAMSUNG|Samsung|Opera Mini|POLARIS|IEMobile|lgtelecom).*");
		if(mobile1 || mobile2) return true;
		return false;
	}
}
