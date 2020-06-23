package co.withyou.care.helper.serviceHistory.mapper;

import java.util.ArrayList;

import co.withyou.care.helper.serviceHistory.service.ServiceSummaryVO;

public interface ServiceHistoryMapper {
	ArrayList<ServiceSummaryVO> getServiceList();

}
