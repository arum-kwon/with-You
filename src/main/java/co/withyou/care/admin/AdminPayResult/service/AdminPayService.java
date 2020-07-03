package co.withyou.care.admin.AdminPayResult.service;

import java.util.List;
import java.util.Map;

public interface AdminPayService {

	List<AdminPayVo> AdPayselectAll() throws Exception;
	
	AdminPayVo selectpay(AdminPayVo vo) throws Exception;
	
	int PayDelete(AdminPayVo vo) throws Exception;
	
	List<Map> paySelectList(AdminPayVo payVo);
	
	void PayResultselect(AdminPayVo payVo);
	
}
