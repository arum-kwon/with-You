package co.withyou.care.admin.serviceapply.service;

import java.util.List;
import java.util.Map;

public interface AdminServiceApply {

	
	List<AdminApplyVo> AdminSelectAll() throws Exception;
	
	AdminApplyVo selectApply(AdminApplyVo vo) throws Exception;
	
	int ApplyDelete(AdminApplyVo vo)throws Exception;
	
	List<Map> svSelectList(AdminApplyVo applyVo) throws Exception;
	
	void applyResultselect(AdminApplyVo applyVo) throws Exception;
 	
}
