package co.withyou.care.family.patientLoc.service;

import co.withyou.care.common.geoLocation.service.PatientLocVO;

public interface PatientLocService {
	public int getPatientNo(int familyNo) throws Exception;

	PatientLocVO getLoc(PatientLocVO vo) throws Exception;
}
