package co.withyou.care.family.apply.service;

import java.util.List;
import java.util.Map;

import co.withyou.care.family.search.service.SearchFilterVo;

public interface ApplyService {

	public void applyResultInsert(ApplyVo applyVo) throws Exception;
	List <Map> getSelectList(ApplyVo applyVo) throws Exception;
	Map getSelect (String serviceNo) throws Exception;
	Map getSelect2 (String serviceNo) throws Exception;
	Map getSelect3 (String serviceNo) throws Exception;
	
}
