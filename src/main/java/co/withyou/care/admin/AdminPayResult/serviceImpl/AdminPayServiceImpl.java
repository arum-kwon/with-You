package co.withyou.care.admin.AdminPayResult.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.withyou.care.admin.AdminPayResult.service.AdminPayService;
import co.withyou.care.admin.AdminPayResult.service.AdminPayVo;
import co.withyou.care.admin.adminfamily.mapper.AdminFamilyMapper;
@Service("adminpayService")
public class AdminPayServiceImpl implements AdminPayService {

	
	@Autowired
	AdminFamilyMapper map;

	@Override
	public List<AdminPayVo> AdPayselectAll() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public AdminPayVo selectpay(AdminPayVo vo) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int PayDelete(AdminPayVo vo) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Map> paySelectList(AdminPayVo payVo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void PayResultselect(AdminPayVo payVo) {
		// TODO Auto-generated method stub
		
	}
	
	
	}
