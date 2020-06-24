package co.withyou.care.family.bestLike.serviceImpl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import co.withyou.care.family.bestLike.mapper.BestLikeMapper;
import co.withyou.care.family.bestLike.service.BestLikeService;
import co.withyou.care.family.bestLike.service.BestLikeVo;

@Service
@Primary
public class BestLikeServiceImpl implements BestLikeService{

	@Autowired
	public BestLikeMapper bestLikeMap;

	@Override
	public void bestLikeInsert(BestLikeVo bestLikeVo) throws Exception {
		// TODO Auto-generated method stub
		bestLikeMap.bestLikeInsert(bestLikeVo);
	}

	@Override
	public void bestLikeDelete(BestLikeVo bestLikeVo) throws Exception {
		// TODO Auto-generated method stub
		bestLikeMap.bestLikeDelete(bestLikeVo);
	}


	
}
