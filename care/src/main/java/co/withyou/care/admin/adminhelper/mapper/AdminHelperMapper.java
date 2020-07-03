package co.withyou.care.admin.adminhelper.mapper;

import java.util.List;

import org.mybatis.spring.annotation.MapperScan;

import co.withyou.care.admin.adminhelper.service.AdminHelperVo;

@MapperScan
public interface AdminHelperMapper {
	List<AdminHelperVo> HelperselectAll() throws Exception;
}
