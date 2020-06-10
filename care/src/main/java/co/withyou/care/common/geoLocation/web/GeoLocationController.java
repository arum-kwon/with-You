package co.withyou.care.common.geoLocation.web;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.withyou.care.common.HomeController;

@Controller
public class GeoLocationController {
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/location.do")
	public String home() {
		
		return "main/common/geolocation/gpsTest";
	}
	
}
