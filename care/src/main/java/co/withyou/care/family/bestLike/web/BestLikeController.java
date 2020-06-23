package co.withyou.care.family.bestLike.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import co.withyou.care.family.Login.service.FamilyVO;
import co.withyou.care.family.bestLike.service.BestLikeService;
import co.withyou.care.family.bestLike.service.BestLikeVo;

@Controller
public class BestLikeController {

	@Autowired
	public BestLikeService bestLikeService;
	
	@RequestMapping("bestLike.do")
	public String bestLike ( BestLikeVo bestLikeVo, HttpServletRequest request, HttpSession session) throws Exception {
		session = request.getSession();
		FamilyVO familyVo = (FamilyVO) session.getAttribute("loginOk");
		bestLikeVo.setFamilyNo(familyVo.getFamilyNo());
		
		System.out.println(bestLikeVo);
		bestLikeService.bestLikeInsert(bestLikeVo);
		
		return "redirect:/applyList.do";
	}
}
