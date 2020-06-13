package co.withyou.care.hospital.GwangMyeong;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("GHospiterService")
public class GHospitalImpl implements GwangMyeongService{

	@Autowired
	private GHospitalMapper ghospitalmap;
	@Override
	public GHospitalVO getInsert(GHospitalVO vo) throws Exception {
		// TODO Auto-generated method stub
		return ghospitalmap.getInsert(vo);
	}

}
