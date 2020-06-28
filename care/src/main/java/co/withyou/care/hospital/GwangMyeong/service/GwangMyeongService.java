package co.withyou.care.hospital.GwangMyeong.service;

import org.springframework.stereotype.Service;

@Service
public interface GwangMyeongService {
	
	void gwangmyeonginsert(GwangMyeongVo vo) throws Exception;
	void SeoulInsert(SeoulVo vo)throws Exception;
}
