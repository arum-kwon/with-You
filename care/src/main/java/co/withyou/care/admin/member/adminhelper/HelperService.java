package co.withyou.care.admin.member.adminhelper;

import java.util.List;

public interface HelperService {

	List<HelperVo> selectAll() throws Exception;

	HelperVo selectHp(HelperVo vo) throws Exception;

	int HelperDelete(HelperVo vo) throws Exception;
}
