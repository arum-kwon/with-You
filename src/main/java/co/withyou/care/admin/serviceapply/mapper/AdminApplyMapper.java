package co.withyou.care.admin.serviceapply.mapper;

import java.util.List;

import org.mybatis.spring.annotation.MapperScan;

import co.withyou.care.admin.serviceapply.service.AdminApplyVo;


@MapperScan
public interface AdminApplyMapper {

	
	List<AdminApplyVo>ApplySelectAll() throws Exception;
	
	AdminApplyVo selectApply(AdminApplyVo vo) throws Exception;
	
	int ApplyDelete(AdminApplyVo vo) throws Exception;
	}

