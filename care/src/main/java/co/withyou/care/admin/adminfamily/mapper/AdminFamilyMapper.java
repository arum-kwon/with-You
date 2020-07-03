package co.withyou.care.admin.adminfamily.mapper;

import java.util.List;

import org.mybatis.spring.annotation.MapperScan;

import co.withyou.care.admin.adminfamily.service.AdminFamilyVo;

@MapperScan
public interface AdminFamilyMapper {
	List<AdminFamilyVo>FamilyselectAll() throws Exception;
}
