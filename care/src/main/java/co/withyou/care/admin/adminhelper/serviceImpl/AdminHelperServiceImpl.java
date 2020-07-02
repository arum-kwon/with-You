package co.withyou.care.admin.adminhelper.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.withyou.care.admin.adminhelper.mapper.AdminHelperMapper;
import co.withyou.care.admin.adminhelper.service.AdminHelperService;
import co.withyou.care.admin.adminhelper.service.AdminHelperVo;

@Service("adminhelperService")
public class AdminHelperServiceImpl implements AdminHelperService {
	@Autowired
	AdminHelperMapper map;

	@Override
	public List<AdminHelperVo> HelperselectAll() throws Exception {
		// TODO Auto-generated method stub
		return map.HelperselectAll();
	}

}
