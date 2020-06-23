package co.withyou.care.family.apply.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import co.withyou.care.family.apply.mapper.ApplyMapper;
import co.withyou.care.family.apply.service.ApplyService;
import co.withyou.care.family.apply.service.ApplyVo;

@Service
@Primary
public class ApplyServiceImpl implements ApplyService{

	@Autowired
	public ApplyMapper applyMap;

	@Override
	public void applyResultInsert(ApplyVo applyVo) throws Exception {
		// TODO Auto-generated method stub
		applyMap.applyResultInsert(applyVo);
	}

	@Override
	public List<Map> getSelectList(ApplyVo applyVo) throws Exception {
		// TODO Auto-generated method stub
		return applyMap.getSelectList(applyVo);
	}
	
}
