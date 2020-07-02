package co.withyou.care.admin.serviceapply.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.withyou.care.admin.adminfamily.service.AdminFamilyVo;
import co.withyou.care.admin.serviceapply.mapper.AdminApplyMapper;
import co.withyou.care.admin.serviceapply.service.AdminServiceApply;
import co.withyou.care.admin.serviceapply.service.AdminApplyVo;

@Service("adminserviceApply")
public class AdminApplyImpl implements AdminServiceApply{

	@Autowired
	AdminApplyMapper map;

	@Override
	public List<AdminApplyVo> AdminSelectAll() throws Exception {
		// TODO Auto-generated method stub
		return map.ApplySelectAll();
	}
	@Override
	public AdminApplyVo selectApply(AdminApplyVo vo) throws Exception {
		// TODO Auto-generated method stub
		return map.selectApply(vo);
	}

	@Override
	public int ApplyDelete(AdminApplyVo vo) throws Exception {
		// TODO Auto-generated method stub
		return ApplyDelete(vo);
	}

	@Override
	public List<Map> svSelectList(AdminApplyVo applyVo) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void applyResultselect(AdminApplyVo applyVo) throws Exception {
		// TODO Auto-generated method stub
		
	}
	
}