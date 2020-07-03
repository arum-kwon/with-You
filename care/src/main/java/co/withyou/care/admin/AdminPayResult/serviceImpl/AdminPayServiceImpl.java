package co.withyou.care.admin.AdminPayResult.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.withyou.care.admin.AdminPayResult.mapper.AdminPayMapper;
import co.withyou.care.admin.AdminPayResult.service.AdminPayService;
import co.withyou.care.admin.AdminPayResult.service.AdminPayVo;

@Service("adminpayService")
public class AdminPayServiceImpl implements AdminPayService {

	
	@Autowired
	AdminPayMapper map;

	@Override
	public List<AdminPayVo> AdPayselectAll() throws Exception {
		return map.PayselectAll();
	}
	
}
