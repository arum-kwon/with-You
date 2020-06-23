package co.withyou.care.family.Update.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.withyou.care.family.Login.service.FamilyVO;
import co.withyou.care.family.Update.mapper.FamilyUpdateMapper;
import co.withyou.care.family.Update.service.FamilyUpdateService;
import co.withyou.care.family.Update.service.FamilyUpdateVo;


public class FamilyUpdateServiceImpl implements FamilyUpdateService {

	@Autowired
	private FamilyUpdateMapper map;

	@Override
	public FamilyVO getSelect(FamilyVO vo) throws Exception {
		// TODO Auto-generated method stub
		return map.getSelect(vo);
	}

	@Override
	public int Update(FamilyVO vo) throws Exception {
		// TODO Auto-generated method stub
		int result = 0;
		try {
			result = map.Update(vo);
		} catch (Exception e) {
			e.printStackTrace();
			return result;
		}
		return result;
	}

	
	

}

