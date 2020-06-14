package co.withyou.care.family.patientLong;

import java.util.Locale;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

public class PatientLong {

	@RequestMapping(value="/patientLong.do")
	public String patientLoc(Locale locale, Model model) {
		return "family/patientLoc/patientLong";

	}
}
