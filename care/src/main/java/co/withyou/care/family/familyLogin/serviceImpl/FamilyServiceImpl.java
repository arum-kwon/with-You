package co.withyou.care.family.familyLogin.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.withyou.care.family.familyLogin.mapper.FamilyMapper;
import co.withyou.care.family.familyLogin.service.FamilyService;
import co.withyou.care.family.familyLogin.service.FamilyVO;

@Service("familyLoginService")
public class FamilyServiceImpl implements FamilyService {

	@Autowired
	private FamilyMapper famloginmap;
	
	@Override
	public FamilyVO getSelect(FamilyVO vo) throws Exception {
		// TODO Auto-generated method stub
		return famloginmap.getSelect(vo);
	}
}
