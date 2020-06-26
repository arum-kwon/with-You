package co.withyou.care.common.chat.web;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.withyou.care.common.chat.service.ChatService;
import co.withyou.care.common.chat.service.ChatVo;
import co.withyou.care.family.Login.service.FamilyVO;
import co.withyou.care.helper.Login.service.HelperVO;

@Controller
public class ChatController {

	@Autowired
	public ChatService chatService;
	
	@RequestMapping("chat.do")
	public String chat(ChatVo chatVo, HttpServletRequest request, HttpSession session, Model model) throws Exception {
		
		//get userType from session
		session = request.getSession();
		String userType = (String) session.getAttribute("userType");
		chatVo.setUserType(userType);
		if (chatVo.getUserType().equals("f")) {
			//get familyNo from session
			FamilyVO familyVo = (FamilyVO) session.getAttribute("loginOk");
			chatVo.setFamilyNo(familyVo.getFamilyNo());
		} else {
			//get helperNo from session
			HelperVO helperVo = (HelperVO) session.getAttribute("loginOk");
			chatVo.setHelperNo(helperVo.getHelperNo());
		}
		
		System.out.println(chatVo);
		
		List <Map> list = chatService.chatSelectList(chatVo);
		model.addAttribute("chatList", list);
		System.out.println(list);
		
		return "common/chat/chatTest";
	}
	
	@RequestMapping("chatInsert.do")
	public String chatInsert (ChatVo chatVo, HttpServletRequest request, HttpSession session, Model model) throws Exception {
		//get userType from session
			session = request.getSession();
			String userType = (String) session.getAttribute("userType");
			chatVo.setUserType(userType);
			if (chatVo.getUserType().equals("f")) {
				//get familyNo from session
				FamilyVO familyVo = (FamilyVO) session.getAttribute("loginOk");
				chatVo.setFamilyNo(familyVo.getFamilyNo());
			} else {
				//get helperNo from session
				HelperVO helperVo = (HelperVO) session.getAttribute("loginOk");
				chatVo.setHelperNo(helperVo.getHelperNo());
			}
		
		//msg insert into DB table name 'CHAT'
		System.out.println("insert chat vo:" + chatVo);
		chatService.chatInsert(chatVo);
		
		//유저타입에 따라 필요한 값 물려서 페이지 리다이렉트
		if (chatVo.getUserType().equals("f")) {
			return "redirect:/chat.do?helperNo="+chatVo.getHelperNo();
		} else {
			return "redirect:/chat.do?familyNo="+chatVo.getFamilyNo();
		} 
				
		
	}
	
}
