package co.withyou.care.admin.adminpatient.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.withyou.care.admin.adminpatient.mapper.AdminPatientMapper;
import co.withyou.care.admin.adminpatient.service.AdminPatientService;
import co.withyou.care.admin.adminpatient.service.AdminPatientVo;


@Service("adminpatientService")
public class AdminPatientServiceImpl implements AdminPatientService {

	
	@Override
	public void patientResultselect(AdminPatientVo patientVo) {
		// TODO Auto-generated method stub
		
	}
	@Autowired
	AdminPatientMapper map;
	@Override
	public List<AdminPatientVo> PatientselectAll() throws Exception {
		// TODO Auto-generated method stub
		return map.PatientselectAll();
	}

	@Override
	public AdminPatientVo selectPt(AdminPatientVo vo) throws Exception {
		// TODO Auto-generated method stub
		return selectPt(vo);
	}

	@Override
	public int PatientDelete(AdminPatientVo vo) throws Exception {
		// TODO Auto-generated method stub
		return PatientDelete(vo);
	}
	@Override
	public List<Map> ptSelectList(AdminPatientVo patientVo){
		return null;
	}
}
