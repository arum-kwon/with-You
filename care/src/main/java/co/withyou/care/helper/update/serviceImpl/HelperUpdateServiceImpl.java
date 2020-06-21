package co.withyou.care.helper.update.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;

import co.withyou.care.helper.update.mapper.HelperUpdateMapper;
import co.withyou.care.helper.update.service.HelperUpdateService;
import co.withyou.care.helper.update.service.HelperVo;

public class HelperUpdateServiceImpl implements HelperUpdateService{

	@Autowired
	public HelperUpdateMapper map;
	
	@Override
	public HelperVo getSelect(HelperVo vo) throws Exception {
		// TODO Auto-generated method stub
		return map.getSelect(vo);
	}

	@Override
	public int HelperUpdate(HelperVo vo) throws Exception {
		
		int result=0;
		try {
			result=map.HelperUpdate(vo);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return result;
		}
		return result;
	}
	
	
	
}
