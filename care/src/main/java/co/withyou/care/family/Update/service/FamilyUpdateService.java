package co.withyou.care.family.Update.service;

public interface FamilyUpdateService {

	FamilyUpdateVo getSelect(FamilyUpdateVo vo) throws Exception;
	FamilyUpdateVo Update(FamilyUpdateVo vo)throws Exception;
}
