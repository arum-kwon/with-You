package co.withyou.care.admin.member.adminpatient;

import java.util.List;

public interface PatientService {

	List<PatientVo> selectAll() throws Exception;
	PatientVo selectPt(PatientVo vo) throws Exception;
	int PatientDelete(PatientVo vo) throws Exception;
}
