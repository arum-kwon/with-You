package co.withyou.care.helper.serviceHistory.serviceImpl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.withyou.care.helper.serviceHistory.mapper.ServiceHistoryMapper;
import co.withyou.care.helper.serviceHistory.service.ServiceHistoryService;

@Service("historyService")
public class ServiceHistoryServiceImpl implements ServiceHistoryService {

	@Autowired
	public ServiceHistoryMapper historyMap;
	
	
	@Override
	public Map getList(int helperNO) throws Exception {
		return historyMap.getList(helperNO);
	}

}
