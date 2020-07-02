package co.withyou.care.admin.adminpatient.service;

import java.util.List;
import java.util.Map;

public interface AdminPatientService {

	List<AdminPatientVo> PatientselectAll() throws Exception;

	AdminPatientVo selectPt(AdminPatientVo vo) throws Exception;

	int PatientDelete(AdminPatientVo vo) throws Exception;

	List<Map> ptSelectList(AdminPatientVo patientVo);

	void patientResultselect(AdminPatientVo patientVo);
}
