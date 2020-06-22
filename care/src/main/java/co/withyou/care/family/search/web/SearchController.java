package co.withyou.care.family.search.web;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import co.withyou.care.family.search.service.SearchFilterVo;
import co.withyou.care.family.search.service.SearchService;


@Controller
public class SearchController {

	@Autowired
	public SearchService searchService;
	
	//간병신청 메뉴
	@RequestMapping("applyMenu.do")
	public String applyMenu() {
		return "family/applyService/applyMenu";
	}
	
	//간병인 조회 
	@RequestMapping("helperList.do")
	public String helperList(SearchFilterVo searchFilterVo, Model model) throws Exception {
		if(searchFilterVo.getHelperWorkArea() == null) {
			return "family/searchHelper/helperList";
		} else {
			List <Map> list = searchService.getSelectList(searchFilterVo);
			model.addAttribute("searchList", list);
			System.out.println(searchFilterVo);
		}
		
		
		return "family/searchHelper/helperList";
	}
	
	//조회된 간병인 상세정보
	@RequestMapping("helperInfo.do")
	public String memberInfo(@RequestParam("helperNo") String hNo, Model model, SearchFilterVo searchFilterVo) throws Exception {
		String helperNo = hNo;
		System.out.println(helperNo);
		
		Map map = searchService.getSelect(helperNo);
		model.addAttribute("helperInfo", map);
		
		return "family/searchHelper/helperInfo";
	}
}
