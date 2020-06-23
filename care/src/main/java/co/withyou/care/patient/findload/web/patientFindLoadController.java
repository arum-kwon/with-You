package co.withyou.care.patient.findload.web;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.code.geocoder.Geocoder;
import com.google.code.geocoder.GeocoderRequestBuilder;
import com.google.code.geocoder.model.GeocodeResponse;
import com.google.code.geocoder.model.GeocoderRequest;
import com.google.code.geocoder.model.GeocoderResult;
import com.google.code.geocoder.model.GeocoderStatus;
import com.google.code.geocoder.model.LatLng;

import co.withyou.care.patient.Login.service.PatientVO;
import co.withyou.care.patient.findload.service.FamilyVO;
import co.withyou.care.patient.findload.service.patientCallService;



@Controller
public class patientFindLoadController {
	
	@Autowired
	patientCallService patientCallservice;
	
	@RequestMapping("/findload.do")
	public ModelAndView getTel(FamilyVO vo,HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
		PatientVO name =  (PatientVO) session.getAttribute("loginOk");
		vo.setFamilyNo(name.getFamilyNo());
		vo = patientCallservice.getSelect(vo);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("familyVO", vo);
		mav.setViewName("patient/findLoad/patientTestLoadmap");
		
		return mav;		
	}	

public static Float[] geoCoding(String location) {

	if (location == null)  

	return null;
			       
	Geocoder geocoder = new Geocoder();
	// setAddress : 변환하려는 주소 (경기도 성남시 분당구 등)
	// setLanguate : 인코딩 설정

	GeocoderRequest geocoderRequest = new GeocoderRequestBuilder().setAddress(location).setLanguage("ko").getGeocoderRequest();
	GeocodeResponse geocoderResponse;

	try {
		geocoderResponse = geocoder.geocode(geocoderRequest);
		
		if (geocoderResponse.getStatus() == GeocoderStatus.OK & !geocoderResponse.getResults().isEmpty()) {
			GeocoderResult geocoderResult=geocoderResponse.getResults().iterator().next();			
			LatLng latitudeLongitude = geocoderResult.getGeometry().getLocation();

			Float[] coords = new Float[2];		
			coords[0] = latitudeLongitude.getLat().floatValue();		
			coords[1] = latitudeLongitude.getLng().floatValue();
		
			return coords;
		}

	} catch (IOException ex) {
		ex.printStackTrace();
 }
	return null;
}

//@RequestMapping("/changeAddr.do")
//public String address() {
//		try {
//
//			String location = "경기도 수원시 장안구";
//
//			String addr = "https://dapi.kakao.com/v2/local/search/address.json";
//
//			String apiKey = "KakaoAK { 2efd347f1fc6a8a7546e3ae02b064a31 }";
//
//			location = URLEncoder.encode(location, "UTF-8");
//
//			String query = "query=" + location;
//
//			StringBuffer stringBuffer = new StringBuffer();
//			stringBuffer.append(addr);
//			stringBuffer.append("?");
//			stringBuffer.append(query);
//
//			System.out.println("stringBuffer.toString() " + stringBuffer.toString());
//
//			URL url = new URL(stringBuffer.toString());
//
//			URLConnection conn = url.openConnection();
//
//			conn.setRequestProperty("Authorization", apiKey);
//
//			BufferedReader rd = null;
//
//			rd = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
//			StringBuffer docJson = new StringBuffer();
//			ObjectMapper objMapper = new ObjectMapper();
//			
//			String line;
//
//			while ((line = rd.readLine()) != null) {
//				docJson.append(line);
//			}
//
//			
//			if (0 < docJson.toString().length()) {
//				System.out.println("docJson    :" + docJson.toString());
//
//			}
//
//			rd.close();

//			JSONObject jsonObject = new JSONObject(docJson.toString());
//
//			JSONArray jsonArray = (JSONArray) jsonObject.get("documents");
//
//			JSONObject tempObj = (JSONObject) jsonArray.get(0);
//
//			System.out.println("latitude : " + tempObj.getDouble("y")); //위도
//			System.out.println("longitude : " + tempObj.getDouble("x")); //경도

//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		return null;
//
//}



} // end of Class
