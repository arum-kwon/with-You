package co.withyou.care.admin.member.adminfamily;

import java.util.List;


public interface FamilyService { 
	
	List<FamilyVo> selectAll() throws Exception;
	FamilyVo selectfm(FamilyVo vo) throws Exception;
	int FamilyDelete(FamilyVo vo) throws Exception;
	
	
}
