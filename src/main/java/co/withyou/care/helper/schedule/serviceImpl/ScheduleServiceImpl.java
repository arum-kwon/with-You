package co.withyou.care.helper.schedule.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import co.withyou.care.helper.schedule.mapper.ScheduleMapper;
import co.withyou.care.helper.schedule.service.ApplyVo;
import co.withyou.care.helper.schedule.service.ScheduleService;

public class ScheduleServiceImpl implements ScheduleService{
	
	@Autowired
	public ScheduleMapper map;
	
	@Override
	public List<Map> getSchedule(ApplyVo vo) throws Exception {
		// TODO Auto-generated method stub
		return map.getSchedule(vo);
	}

}
