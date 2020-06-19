package co.withyou.care.family.search.service;

public class SearchFilterVo {
	private String helperWorkArea;
	private String helperStartTime;
	private String helperEndTime;
	private String certifiNo;
	
	public String getHelperWorkArea() {
		return helperWorkArea;
	}
	public void setHelperWorkArea(String helperWorkArea) {
		this.helperWorkArea = helperWorkArea;
	}
	
	public String getHelperStartTime() {
		return helperStartTime;
	}
	public void setHelperStartTime(String helperStartTime) {
		this.helperStartTime = helperStartTime;
	}
	public String getHelperEndTime() {
		return helperEndTime;
	}
	public void setHelperEndTime(String helperEndTime) {
		this.helperEndTime = helperEndTime;
	}
	public String getCertifiNo() {
		return certifiNo;
	}
	public void setCertifiNo(String certifiNo) {
		this.certifiNo = certifiNo;
	}
	@Override
	public String toString() {
		return "CheckResultVo [helperWorkArea=" + helperWorkArea + ", helperStartTime=" + helperStartTime
				+ ", helperEndTime=" + helperEndTime + ", certifiNo=" + certifiNo + "]";
	}
	
}
