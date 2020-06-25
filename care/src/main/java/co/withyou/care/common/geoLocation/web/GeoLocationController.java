package co.withyou.care.common.geoLocation.web;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
	public void insertLocation(PatientLocVO vo, HttpServletRequest request) {
		String time = request.getParameter("time");
        SimpleDateFormat df = new SimpleDateFormat ( "yyyy-MM-dd hh:mm:ss");
		try {
			Date locTime = df.parse(time);
			vo.setPatientLoctime(locTime);
		} catch (ParseException e) {
			e.printStackTrace();
		}



		//String longitude = request.getParameter("patientLongitude");
		//세션에 저장된 환자의 등록 번호를 연결해줌
		//System.out.println("latitude : " + latitude + ", longitude : " + longitude);
		System.out.println(vo.getPatientNo() + ", " + vo.getPatientLatitude() + ", " + 
						vo.getPatientLongitude() + ", " + vo.getPatientLoctime());
		//HttpSession session = request.getSession();
		
		//System.out.println("---------" +  session.getAttribute("loginOk"));
		service.insertPatientLoc(vo);
	}
}
