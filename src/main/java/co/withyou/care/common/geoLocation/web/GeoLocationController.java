package co.withyou.care.common.geoLocation.web;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import co.withyou.care.common.geoLocation.service.GeoLocationService;
import co.withyou.care.common.geoLocation.service.PatientLocVO;


@Controller
public class GeoLocationController {
	
	
	@Autowired
	GeoLocationService service;
	/**
	 * @return 위치정보를 조회할 수 있는 페이지로 안내
	 */
	@RequestMapping(value = "/location.do")
	public String home() {
		return "common/geolocation/gpsTest";
	}
	
	/**
	 * 위도, 경도를 받아서 DB에 저장함
	 * @param vo
	 */
	@RequestMapping(value = "/insertLocation.do")
	@ResponseBody
	public int insertLocation(PatientLocVO vo, HttpServletRequest request) {
		String time = request.getParameter("time");
        SimpleDateFormat df = new SimpleDateFormat ("yyyy-MM-dd hh:mm:ss");
        
		try {
			Date locTime = df.parse(time);
			vo.setPatientLoctime(locTime);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		int result = service.insertPatientLoc(vo);
		return result;
	}
}
