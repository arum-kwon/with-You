package co.withyou.care.family.Update.service;

public interface FamilyUpdateService {

	FamilyUpdateVo getSelect(FamilyUpdateVo vo) throws Exception;
	public int Update(FamilyUpdateVo vo)throws Exception;
}
