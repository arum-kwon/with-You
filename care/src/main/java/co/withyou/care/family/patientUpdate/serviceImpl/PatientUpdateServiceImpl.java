package co.withyou.care.family.patientUpdate.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;

import co.withyou.care.family.patientUpdate.mapper.PatientUpdateMapper;
import co.withyou.care.family.patientUpdate.service.PatientUpdateService;
import co.withyou.care.patient.Login.service.PatientVO;

public class PatientUpdateServiceImpl implements PatientUpdateService{
	@Autowired
	private PatientUpdateMapper map;
	
	@Override
	public PatientVO getSelect(PatientVO vo) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int Update(PatientVO vo) throws Exception {
		// TODO Auto-generated method stub
		int result = 0;
		try {
			result = map.Update(vo);
		} catch (Exception e) {
			// TODO: handle exception
			return result;
		}
		return result;
	}

}
