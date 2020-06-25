package co.withyou.care.common.review.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import co.withyou.care.common.review.service.ReviewService;
import co.withyou.care.common.review.service.ReviewVO;

@Controller
public class ReviewController {
	
	@Autowired
	ReviewService reviewService;

	@RequestMapping(value = "/goReview.do")
	public String goReview() {
		return "common/home/review";
	}
	
	@RequestMapping(value = "/insertReview.do")
	@ResponseBody
	public int insertReview(ReviewVO vo) {
		//세션에서 이용자 번호 가져오기
		vo.setReviewWriter(1234);
		System.out.println(vo);
		
		
		int result = reviewService.insertReview(vo);
		return result;
	}
	

}
