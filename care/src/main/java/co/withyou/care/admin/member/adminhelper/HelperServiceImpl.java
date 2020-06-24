package co.withyou.care.admin.member.adminhelper;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("adminhelperService")
public class HelperServiceImpl implements HelperMapper {
	@Autowired
	HelperMapper map;

	@Override
	public List<HelperVo> selectAll() throws Exception {
		// TODO Auto-generated method stub
		return map.selectAll();
	}

	@Override
	public HelperVo selectHp(HelperVo vo) throws Exception {
		// TODO Auto-generated method stub
		return map.selectHp(vo);
	}

	@Override
	public int HelperDelete(HelperVo vo) throws Exception {
		// TODO Auto-generated method stub
		return map.HelperDelete(vo);
	}

}
