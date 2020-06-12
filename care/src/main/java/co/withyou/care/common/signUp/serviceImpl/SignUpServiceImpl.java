package co.withyou.care.common.signUp.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.withyou.care.common.signUp.mapper.SignUpMapper;
import co.withyou.care.common.signUp.service.FamilyVO;
import co.withyou.care.common.signUp.service.HelperVO;
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
	public String checkEmailHelper(String email) throws Exception {
		return null;
	}

	@Override
	public void insertFamily(FamilyVO vo) throws Exception {
	}

	@Override
	public void insertHelper(HelperVO vo) throws Exception {
	}

	@Override
	public void createPatientVCode(String code) throws Exception {
	}

	@Override
	public String checkPatientVCode(String code) throws Exception {
		return null;
	}

}
