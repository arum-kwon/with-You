package co.withyou.care.common.signUp.service;

public interface SignUpService {
	//보호자 이메일 확인. 간병인 이메일 확인. 보호자 정보 삽입, 간병인 정보 삽입
	int checkEmailFamily(FamilyVO vo) throws Exception;
	String checkEmailHelper(String email) throws Exception;
	void insertFamily(FamilyVO vo) throws Exception;
	void insertHelper(HelperVO vo) throws Exception;
	void createPatientVCode(String code) throws Exception;
	String checkPatientVCode(String code) throws Exception;
}
