package co.withyou.care.family.bestLike.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import co.withyou.care.family.bestLike.service.BestLikeVo;

@Controller
public class BestLikeController {

	@RequestMapping("bestLike.do")
	public String bestLike (BestLikeVo bestLikeVo) throws Exception {
		
		return "redirect:/applyDetail.do";
	}
}
