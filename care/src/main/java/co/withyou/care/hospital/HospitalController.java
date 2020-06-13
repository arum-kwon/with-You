package co.withyou.care.hospital;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;

@Controller
public class HospitalController {

	@Autowired
	HospitalService hospiterService;
	
	@RequestMapping(value="/hospitalGetGwangMyeong.do")
	@ResponseBody
	public Object getData()throws JsonProcessingException, IOException{
		Object GwangMyeongResponse = hospiterService.GwangMyeong();
		return GwangMyeongResponse;
		
	}
}
