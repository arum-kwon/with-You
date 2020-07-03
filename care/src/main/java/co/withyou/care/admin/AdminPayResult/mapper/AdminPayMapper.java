package co.withyou.care.admin.AdminPayResult.mapper;

import java.util.List;

import org.mybatis.spring.annotation.MapperScan;

import co.withyou.care.admin.AdminPayResult.service.AdminPayVo;
import co.withyou.care.admin.adminfamily.service.AdminFamilyVo;

@MapperScan
public interface AdminPayMapper {
	List<AdminPayVo>PayselectAll() throws Exception;
}
