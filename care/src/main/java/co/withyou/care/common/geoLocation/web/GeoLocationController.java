package co.withyou.care.common.geoLocation.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class GeoLocationController {
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/location.do")
	public String home() {
		
		return "common/geolocation/gpsTest";
	}
	
	@RequestMapping(value = "/insertLocation.do")
	public void insertLocation(HttpServletRequest request) {
		String latitude = request.getParameter("latitude");
		String longitude = request.getParameter("longitude");
		
		System.out.println("latitude : " + latitude + ", longitude : " + longitude);
	}
}
