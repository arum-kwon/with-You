package co.withyou.care.family.Update.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.withyou.care.family.Update.mapper.FamilyUpdateMapper;
import co.withyou.care.family.Update.service.FamilyUpdateService;
import co.withyou.care.family.Update.service.FamilyUpdateVo;


public class FamilyUpdateServiceImpl implements FamilyUpdateService {

	@Autowired
	private FamilyUpdateMapper map;

	@Override
	public FamilyUpdateVo getSelect(FamilyUpdateVo vo) throws Exception {
		// TODO Auto-generated method stub
		return map.getSelect(vo);
	}

	@Override
	public FamilyUpdateVo Update(FamilyUpdateVo vo) throws Exception {
		// TODO Auto-generated method stub
		return map.Update(vo);
	}
	
	

}

