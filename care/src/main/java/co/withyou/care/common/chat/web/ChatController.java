package co.withyou.care.common.chat.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ChatController {

	@RequestMapping("chat.do")
	public String chat() {
		
		return "common/chat/chat";
	}
}
