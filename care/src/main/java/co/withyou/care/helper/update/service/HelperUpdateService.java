package co.withyou.care.helper.update.service;


public interface HelperUpdateService {
	
	HelperVo getSelect(HelperVo vo) throws Exception;
	public int HelperUpdate(HelperVo vo) throws Exception;
}
