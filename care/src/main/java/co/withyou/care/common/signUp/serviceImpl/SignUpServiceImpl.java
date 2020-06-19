package co.withyou.care.common.signUp.serviceImpl;

import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.withyou.care.common.signUp.mapper.SignUpMapper;
import co.withyou.care.common.signUp.service.FamilyVO;
import co.withyou.care.common.signUp.service.HelperVO;
import co.withyou.care.common.signUp.service.PatientVO;
import co.withyou.care.common.signUp.service.SignUpService;

@Service("signUpService")
public class SignUpServiceImpl implements SignUpService {

	@Autowired
	public SignUpMapper map;
	
	@Override
	public int checkEmailFamily(FamilyVO vo) throws Exception {
		return map.checkEmailFamily(vo);
	}

	@Override
	public int checkEmailHelper(String email) throws Exception {
		return 0;
	}

	@Override
	public void insertFamilyAndPatient(FamilyVO fVO, PatientVO pVO) throws Exception {
		String code = createPatientVCode();
		pVO.setPatientVcode(code);
		map.insertPatient(pVO);
		map.selectPatientNo(pVO);
		map.insertFamily(fVO);
	}

	@Override
	public void insertHelper(HelperVO vo) throws Exception {
	}

	@Override
	public String createPatientVCode() throws Exception {
		int n = 5; // n자리 쿠폰 
		char[] chs = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 
				'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 
				'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z' };

		Random rd = new Random();
		while (true) {
			StringBuilder sb = new StringBuilder();
			for (int i = 0; i < n; i++) {
				char ch = chs[rd.nextInt(chs.length)];
				sb.append(ch);
			}
			String code = sb.toString();
			System.out.println(code);
			int result = map.checkPatientVCode(code);
			if(result == 0) {
				return code;
			}
		}
	}

}
