package co.withyou.care.common.geoLocation.web;

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
	public void insertLocation(PatientLocVO vo) {
		//String latitude = request.getParameter("patientLatitude");
		//String longitude = request.getParameter("patientLongitude");
		//세션에 저장된 환자의 등록 번호를 연결해줌
		//System.out.println("latitude : " + latitude + ", longitude : " + longitude);
		System.out.println(vo.getPatientNo());
		//HttpSession session = request.getSession();
		
		//System.out.println("---------" +  session.getAttribute("loginOk"));
		//service.insertPatientLoc(vo);
	}
}
