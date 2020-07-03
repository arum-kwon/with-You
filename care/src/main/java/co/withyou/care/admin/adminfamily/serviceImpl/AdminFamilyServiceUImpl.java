package co.withyou.care.admin.adminfamily.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.withyou.care.admin.adminfamily.mapper.AdminFamilyMapper;
import co.withyou.care.admin.adminfamily.service.AdminFamilyService;
import co.withyou.care.admin.adminfamily.service.AdminFamilyVo;

@Service("adminfamilyService")
public class AdminFamilyServiceUImpl implements AdminFamilyService {
	
	@Autowired
	AdminFamilyMapper map;
	
	@Override
	public List<AdminFamilyVo> selectAll() throws Exception {
		return map.FamilyselectAll();
	}


}
