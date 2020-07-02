package co.withyou.care.admin.adminfamily.service;

import java.util.List;
import java.util.Map;

public interface AdminFamilyService {

	List<AdminFamilyVo> FamilyselectAll() throws Exception;

	AdminFamilyVo selectfm(AdminFamilyVo vo) throws Exception;

	int FamilyDelete(AdminFamilyVo vo) throws Exception;

	List<Map> fmSelectList(AdminFamilyVo familyVo);

	void familyResultselect(AdminFamilyVo familyVo);

}
