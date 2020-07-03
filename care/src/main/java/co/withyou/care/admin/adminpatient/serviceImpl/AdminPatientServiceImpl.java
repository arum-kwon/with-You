package co.withyou.care.admin.adminpatient.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import co.withyou.care.admin.adminpatient.mapper.AdminPatientMapper;
import co.withyou.care.admin.adminpatient.service.AdminPatientService;
import co.withyou.care.admin.adminpatient.service.AdminPatientVo;

public class AdminPatientServiceImpl implements AdminPatientService {
	
	@Autowired
	AdminPatientMapper map;
	
	@Override
	public List<AdminPatientVo> PatientselectAll() throws Exception {
		// TODO Auto-generated method stub
		return map.PatientselectAll();
	}

}
