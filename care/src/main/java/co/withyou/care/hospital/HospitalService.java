package co.withyou.care.hospital;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;


@Service
public class HospitalService {
	
	@Autowired
	private HospitalMap map;
	private HospitalVO vo;
	
	public Object GwangMyeong() throws JsonProcessingException, IOException{
		String url = "https://data.gm.go.kr/openapi/RecuperationHospital";

		RestTemplate restTemplate = new RestTemplate();
		
		HttpHeaders headers = new HttpHeaders();		
		HttpEntity<?> entity = new HttpEntity<String>(headers);
		ObjectMapper mapper = new ObjectMapper();
		final JsonFactory  factory = mapper.getFactory();
		
		UriComponents builder = UriComponentsBuilder.fromHttpUrl(url)
				.queryParam("KEY", "bb57b95562164f2496e2d3a710b19454").queryParam("Type", "json")
				.queryParam("pIndex", 1).queryParam("pSize", 100).build(false);
		// 자동으로 encode해주는것을 막기위해false		
				
		ResponseEntity<String> response = restTemplate.exchange(builder.toUriString(), HttpMethod.GET, entity,
				String.class);
		//String api = mapper.writeValueAsString(response);
		//JsonNode myJsonNode = mapper.readTree(response);
		System.out.println(response.getBody());

		JsonNode myJsonNode = mapper.readTree(response.getBody());
		System.out.println("myJson :"+myJsonNode.get("RecuperationHospital").get(1).get("row"));
		JsonNode Gwang =myJsonNode.get("RecuperationHospital").get(1).get("row"); 
		//ArrayList<Map> Gwang = (ArrayList<Map>)
		
		for(JsonNode obj : Gwang) {
			System.out.println("병원이름 :"+obj.get("BIZPLC_NM"));
			vo = new HospitalVO();
			vo.setBIZPLC_NM(obj.get("setBIZPLC_NM").toString());
			vo.setREFINE_WGS84_LOGT(obj.get("REFINE_WGS84_LOGT").toString());
			vo.setREFINE_WGS84_LAT(obj.get("REFINE_WGS84_LAT").toString());
			vo.setREFINE_ROADNM_ADDR(obj.get("REFINE_ROADNM_ADDR").toString());
			vo.setHOSPTLRM_CNT(obj.get("HOSPTLRM_CNT").toString());
			vo.setMEDSTAF_CNT(obj.get("MEDSTAF_CNT").toString());
			try {
				map.hospitalInsert(vo);
			} catch (Exception e) {
				e.printStackTrace();
			} 
				
			
		}
		
		return response;
	}	
}
