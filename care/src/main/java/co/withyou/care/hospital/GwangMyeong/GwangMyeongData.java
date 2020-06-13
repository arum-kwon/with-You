package co.withyou.care.hospital.GwangMyeong;

import java.io.IOException;

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
public class GwangMyeongData {

private GHospitalVO vo;
	
	public Object getData() throws JsonProcessingException, IOException{
		String url = "https://data.gm.go.kr/openapi/RecuperationHospital";

		RestTemplate restTemplate = new RestTemplate();
		
		HttpHeaders headers = new HttpHeaders();		
		HttpEntity<?> entity = new HttpEntity<String>(headers);
		ObjectMapper mapper = new ObjectMapper();
		final JsonFactory  factory = mapper.getFactory();
		
		UriComponents builder = UriComponentsBuilder.fromHttpUrl(url)
				.queryParam("KEY", "bb57b95562164f2496e2d3a710b19454").queryParam("Type", "json")
				.queryParam("pIndex", 1).queryParam("pSize", 100).build(false);
		ResponseEntity<String> response = restTemplate.exchange(builder.toUriString(), HttpMethod.GET, entity,
				String.class);
		System.out.println(response.getBody());
		JsonNode myJsonNode = mapper.readTree(response.getBody());
		System.out.println("myJson :"+myJsonNode.get("RecuperationHospital").get(1).get("row"));
		JsonNode Gwang =myJsonNode.get("RecuperationHospital").get(1).get("row"); 
		//ArrayList<Map> Gwang = (ArrayList<Map>)
		System.out.println("Gwang :"+Gwang);
		for(JsonNode obj : Gwang) {
			System.out.println("병원이름 :"+obj.get("BIZPLC_NM"));
			System.out.println("병원이름 string으로 :"+obj.get("BIZPLC_NM").toString());
			System.out.println("병언이름 jsonnode:"+obj.get("BIZPLC_NM").asText());
			vo = new GHospitalVO();
			vo.setBIZPLC_NM(obj.get("BIZPLC_NM").asText());
			vo.setREFINE_WGS84_LOGT(obj.get("REFINE_WGS84_LOGT").asText());
			vo.setREFINE_WGS84_LAT(obj.get("REFINE_WGS84_LAT").asText());
			vo.setREFINE_ROADNM_ADDR(obj.get("REFINE_ROADNM_ADDR").asText());
			vo.setHOSPTLRM_CNT(obj.get("HOSPTLRM_CNT").asText());
			vo.setMEDSTAF_CNT(obj.get("MEDSTAF_CNT").asText());

			try {

				//map.hospitalInsert(vo);
			} catch (Exception e) {
				e.printStackTrace();

			} 
				
			
		}
		

		return vo;
		
	}
}
