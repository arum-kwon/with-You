package co.withyou.care.family.bestLike.web;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.withyou.care.family.Login.service.FamilyVO;
import co.withyou.care.family.bestLike.service.BestLikeService;
import co.withyou.care.family.bestLike.service.BestLikeVo;

@Controller
public class BestLikeController {

	@Autowired
	public BestLikeService bestLikeService;
	
	//즐겨찾기 추가
	@RequestMapping("addLike.do")
	public String addLike (BestLikeVo bestLikeVo, HttpServletRequest request, HttpSession session) throws Exception {
		session = request.getSession();
		FamilyVO familyVo = (FamilyVO) session.getAttribute("loginOk");
		bestLikeVo.setFamilyNo(familyVo.getFamilyNo());
		
		bestLikeService.bestLikeInsert(bestLikeVo);
		
		return "redirect:/applyList.do";
	}
	
	//즐겨찾기 삭제
	@RequestMapping("disLike.do")
	public String disLike (BestLikeVo bestLikeVo, HttpServletRequest request, HttpSession session) throws Exception {
		session = request.getSession();
		FamilyVO familyVo = (FamilyVO) session.getAttribute("loginOk");
		bestLikeVo.setFamilyNo(familyVo.getFamilyNo());
		
		bestLikeService.bestLikeDelete(bestLikeVo);
		
		return "redirect:/applyList.do";
	}
	
	//즐겨찾기 리스트 뷰
	@RequestMapping("bestLikeList.do")
	public String bestLikeList (BestLikeVo bestLikeVo, HttpServletRequest request, HttpSession session, Model model) throws Exception {
		session = request.getSession();
		FamilyVO familyVo = (FamilyVO) session.getAttribute("loginOk");
		bestLikeVo.setFamilyNo(familyVo.getFamilyNo());
		
		List <Map> list = bestLikeService.getSelectList(bestLikeVo);
		model.addAttribute("bestLikeList", list);
		
		return "family/bestLike/bestLikeList";
	}
	
	
	//즐겨찾기 삭제 (리스트에서 삭제)
//	@RequestMapping("disLikeInList.do")
//	public String disLikeInList (BestLikeVo bestLikeVo, HttpServletRequest request, HttpSession session) throws Exception {
//		session = request.getSession();
//		FamilyVO familyVo = (FamilyVO) session.getAttribute("loginOk");
//		bestLikeVo.setFamilyNo(familyVo.getFamilyNo());
//		
//		bestLikeService.bestLikeDelete(bestLikeVo);
//		
//		return "redirect:/bestLikeList.do";
//	}
	
	//즐겨찾기 목록 상세보기
	@RequestMapping("bestLikeDetail.do")
	public String bestLikeDetail () {
		
		return null;
	}
}
