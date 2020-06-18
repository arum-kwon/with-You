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
	
	@RequestMapping("helperInfo.do")
	public String memberInfo(@RequestParam("helperNo") String hNo, Model model) throws Exception {
		String helperNo = hNo;
		System.out.println(helperNo);
		
		Map map = searchService.getSelect(helperNo);
		model.addAttribute("helperInfo", map);
		
		return "family/searchHelper/helperInfo";
	}
}
