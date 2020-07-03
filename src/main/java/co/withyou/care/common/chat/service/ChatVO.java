package co.withyou.care.common.chat.service;

import java.util.Date;

import org.springframework.stereotype.Component;

@Component
public class ChatVO {

	private String cId;
	private String cName;
	private String cContents;
	private Date cDate;
	
	public ChatVO() {
		// TODO Auto-generated constructor stub
	}

	public String getcId() {
		return cId;
	}

	public void setcId(String cId) {
		this.cId = cId;
	}

	public String getcName() {
		return cName;
	}

	public void setcName(String cName) {
		this.cName = cName;
	}

	public String getcContents() {
		return cContents;
	}

	public void setcContents(String cContents) {
		this.cContents = cContents;
	}

	public Date getcDate() {
		return cDate;
	}

	public void setcDate(Date cDate) {
		this.cDate = cDate;
	}

	@Override
	public String toString() {
		return "ChatVO [cId=" + cId + ", cName=" + cName + ", cContents=" + cContents + ", cDate=" + cDate + "]";
	}

}
