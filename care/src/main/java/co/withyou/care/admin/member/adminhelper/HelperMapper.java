package co.withyou.care.admin.member.adminhelper;

import java.util.List;

import org.mybatis.spring.annotation.MapperScan;

@MapperScan
public interface HelperMapper {
	List<HelperVo> selectAll() throws Exception;

	HelperVo selectHp(HelperVo vo) throws Exception;

	int HelperDelete(HelperVo vo) throws Exception;
}
