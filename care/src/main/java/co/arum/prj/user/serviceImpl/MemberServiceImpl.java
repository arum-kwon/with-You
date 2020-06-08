package co.arum.prj.user.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import co.arum.prj.common.LogAop;
import co.arum.prj.user.mapper.MemberMap;
import co.arum.prj.user.service.MemberService;
import co.arum.prj.user.service.MemberVO;

public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberMap map;
	
	@Override
	public List<MemberVO> getMemberAll() throws Exception {
		return map.getMemberAll();
	}

	@Override
	public MemberVO getMember(MemberVO vo) throws Exception {
		return map.getMember(vo);
	}

	@Override
	public void insertMember(MemberVO vo) throws Exception {
		map.insertMember(vo);
	}

	@Override
	public void updateMember(MemberVO vo) throws Exception {
		map.updateMember(vo);
	}

	@Override
	public void deleteMember(MemberVO vo) throws Exception {
		map.deleteMember(vo);
	}

	@Override
	public MemberVO MemberLoginCheck(MemberVO vo) throws Exception {
		return map.MemberLoginCheck(vo);
	}

	@Override
	public MemberVO MemberSearch(MemberVO vo) throws Exception {
		return map.MemberSearch(vo);
	}

}
