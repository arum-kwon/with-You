package co.withyou.care.patient.calltofamily;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("callService")
public class CallServiceImpl implements CallService {

	@Autowired
	private CallMapper map;
	@Override
	public List<CallVO> getCallList() throws Exception {
		// TODO Auto-generated method stub
		return map.getCallList();
	}

}
