package co.withyou.care.patient.calltofamily;

import java.util.List;

public interface CallService {
	List<CallVO> getCallList() throws Exception;
}
