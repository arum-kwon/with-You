package co.withyou.care.admin.adminpatient.mapper;

import java.util.List;

import org.mybatis.spring.annotation.MapperScan;

import co.withyou.care.admin.adminpatient.service.AdminPatientVo;

@MapperScan
public interface AdminPatientMapper {
	List<AdminPatientVo>PatientselectAll() throws Exception;

	AdminPatientVo selectPt(AdminPatientVo vo) throws Exception;

	int PatientDelete(AdminPatientVo vo) throws Exception;
}
