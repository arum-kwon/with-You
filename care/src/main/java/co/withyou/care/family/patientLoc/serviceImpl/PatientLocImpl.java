package co.withyou.care.family.patientLoc.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;

import co.withyou.care.common.geoLocation.service.PatientLocVO;
import co.withyou.care.family.patientLoc.mapper.PatientLocMapper;
import co.withyou.care.family.patientLoc.service.PatientLocService;

public class PatientLocImpl implements PatientLocService{
	@Autowired
	private PatientLocMapper map;
	@Override
	public PatientLocVO getLoc(PatientLocVO vo) throws Exception {
		return map.getLoc(vo);
	}
	@Override
	public int getPatientNo(int familyNo) throws Exception {
		return map.getPatientNo(familyNo);
	}

}
