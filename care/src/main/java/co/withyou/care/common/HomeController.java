package co.withyou.care.common;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/home.do")
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		return "common/home/home";
	}
 //환자
	@RequestMapping(value = "/patient.do")
	public String patient(Locale locale, Model model) {

		return "patient/test/patient";
	}
//보호자
	@RequestMapping(value = "/family.do")
	public String family(Locale locale, Model model) {

		return "family/test/family";
	}
//간병
	@RequestMapping(value = "/helper.do")
	public String helper(Locale locale, Model model) {
	
		return "helper/test/helper";
	}	
}
