package co.withyou.care.hospital;



import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;

import co.withyou.care.hospital.GwangMyeong.GwangMyeongData;


@Controller
public class HospitalController {
	@Autowired
	GwangMyeongData Gdata;
	
	@RequestMapping(value="/hospital.do")
	@ResponseBody
	//public Object getGwangMyeong() throws JsonProcessingException, IOException {
	public String getGwangMyeong() throws JsonProcessingException, IOException {

		System.out.println("hospital.do");
		Object vo = Gdata.getData();
		return "gwangmyeong/GwangMyeong";
		
		 	
	}
	
}
