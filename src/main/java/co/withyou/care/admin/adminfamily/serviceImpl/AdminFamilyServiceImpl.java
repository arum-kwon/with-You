package co.withyou.care.admin.adminfamily.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.withyou.care.admin.adminfamily.mapper.AdminFamilyMapper;
import co.withyou.care.admin.adminfamily.service.AdminFamilyService;
import co.withyou.care.admin.adminfamily.service.AdminFamilyVo;
@Service("adminfamilyService")
public class AdminFamilyServiceImpl implements AdminFamilyService {

	
	@Autowired
	AdminFamilyMapper map;
	
	@Override
	public List<AdminFamilyVo> FamilyselectAll() throws Exception {
		// TODO Auto-generated method stub
		return map.FamilyselectAll();
	}

	@Override
	public AdminFamilyVo selectfm(AdminFamilyVo vo) throws Exception {
		// TODO Auto-generated method stub
		return map.selectFm(vo);
	}

	@Override
	public int FamilyDelete(AdminFamilyVo vo) throws Exception {
		// TODO Auto-generated method stub
		return map.FamilyDelete(vo);
	}

	@Override
	public List<Map> fmSelectList(AdminFamilyVo familyVo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void familyResultselect(AdminFamilyVo familyVo) {
		// TODO Auto-generated method stub
		
	}

}