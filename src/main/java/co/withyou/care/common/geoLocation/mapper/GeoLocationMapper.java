package co.withyou.care.common.geoLocation.mapper;

import org.mybatis.spring.annotation.MapperScan;

import co.withyou.care.common.geoLocation.service.PatientLocVO;

@MapperScan
public interface GeoLocationMapper {
	int insertPatientLoc(PatientLocVO vo);
}
