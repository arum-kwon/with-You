package co.withyou.care.family.patientLoc;

import java.util.Locale;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

public class patientLocController {

		@RequestMapping(value="/patientLoc.do")
		public String patientLoc(Locale locale, Model model) {
			return "family/patientLoc/patientLoc";
	
		}
}
