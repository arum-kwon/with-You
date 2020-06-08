package co.arum.prj.user.service;

import java.util.List;

public interface MemberService {
	List<MemberVO> getMemberAll() throws Exception;
	MemberVO getMember(MemberVO vo) throws Exception;
	void insertMember(MemberVO vo) throws Exception;
	void updateMember(MemberVO vo) throws Exception;
	void deleteMember(MemberVO vo) throws Exception;
	
	//id pw로 로그인 정보 확인
	MemberVO MemberLoginCheck(MemberVO vo) throws Exception;
	
	//특정 조건으로 회원 검색하기
	MemberVO MemberSearch(MemberVO vo) throws Exception;
}
