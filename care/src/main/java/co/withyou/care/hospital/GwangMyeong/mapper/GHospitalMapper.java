package co.withyou.care.hospital.GwangMyeong.mapper;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.stereotype.Service;

import co.withyou.care.hospital.GwangMyeong.GwangMyeongService;

//@Service("GHospitalmap")
@MapperScan
public interface GHospitalMapper extends GwangMyeongService{

}
