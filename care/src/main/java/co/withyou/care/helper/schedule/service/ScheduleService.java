package co.withyou.care.helper.schedule.service;

import java.util.List;
import java.util.Map;


public interface ScheduleService {
	List<Map> getSchedule(ApplyVo vo) throws Exception;
	Map getSelect (String serviceNo) throws Exception;
}
