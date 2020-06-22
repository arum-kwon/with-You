package co.withyou.care.family.patientUpdate.service;

import co.withyou.care.patient.Login.service.PatientVO;

public interface PatientUpdateService {
	PatientVO getSelect(PatientVO vo) throws Exception;
	public int Update(PatientVO vo) throws Exception;
}
