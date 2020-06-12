package co.withyou.care.common.familyLogin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
