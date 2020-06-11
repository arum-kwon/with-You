package co.withyou.care.hospital;

import java.util.Map;

//import org.json.JSONObject;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

public class hospitalController {
	@RequestMapping("/")
	public static Object main(String[] args) {
		String url = "https://data.gm.go.kr/openapi/RecuperationHospital";

		RestTemplate restTemplate = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();

		UriComponents builder = UriComponentsBuilder.fromHttpUrl(url)
				.queryParam("KEY", "bb57b95562164f2496e2d3a710b19454").queryParam("Type", "json")
				.queryParam("pIndex", 1).queryParam("pSize", 100).build(false);
		// 자동으로 encode해주는것을 막기위해false

		Object response = restTemplate.exchange(builder.toUriString(), HttpMethod.GET, new HttpEntity<String>(headers),
				String.class);
		System.out.println(response);

//	      System.out.println("=====RecuperationHospital=====");
//	      System.out.println(memberArray);

		return response;
	}

//	//public static JSONObject getJsonStringFromMap(Map<String, Object> map) {
//		JSONObject jsonObject = new JSONObject();
//		for (Map.Entry<String, Object> entry : map.entrySet()) {
//			String key = entry.getKey();
//			Object value = entry.getValue();
//			jsonObject.put(key, value);
//		}
//
//		return jsonObject;
//	}

}
