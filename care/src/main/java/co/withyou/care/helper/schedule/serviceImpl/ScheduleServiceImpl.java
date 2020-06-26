package co.withyou.care.helper.schedule.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.withyou.care.helper.schedule.mapper.ScheduleMapper;
import co.withyou.care.helper.schedule.service.ApplyVo;
import co.withyou.care.helper.schedule.service.ScheduleService;

@Service("scheduleService")
public class ScheduleServiceImpl implements ScheduleService{
	
	@Autowired
	public ScheduleMapper map;
	
	@Override
	public List<Map> getSchedule(ApplyVo vo) throws Exception {
		return map.getSchedule(vo);
	}

	@Override
	public Map getSelect(String serviceNo) throws Exception {
		return map.getSelect(serviceNo);
	}

}
