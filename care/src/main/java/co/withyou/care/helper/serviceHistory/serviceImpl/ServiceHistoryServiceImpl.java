package co.withyou.care.helper.serviceHistory.serviceImpl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.withyou.care.helper.serviceHistory.service.ServiceHistoryService;
import co.withyou.care.helper.serviceHistory.service.ServiceSummaryVO;
import co.withyou.care.helper.serviceHistory.mapper.ServiceHistoryMapper;

@Service
public class ServiceHistoryServiceImpl implements ServiceHistoryService {

	@Autowired
	ServiceHistoryMapper map;
	
	@Override
	public ArrayList<ServiceSummaryVO> getServiceList() {
		return map.getServiceList();
	}

}
