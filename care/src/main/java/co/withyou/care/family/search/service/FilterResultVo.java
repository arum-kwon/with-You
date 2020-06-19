package co.withyou.care.family.search.service;

public class FilterResultVo {
	private String helperStartTime;
	private String helperEndTime;
	private String helperWorkArea;
	
	public FilterResultVo() {
		// TODO Auto-generated constructor stub
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

	public String getHelperWorkArea() {
		return helperWorkArea;
	}

	public void setHelperWorkArea(String helperWorkArea) {
		this.helperWorkArea = helperWorkArea;
	}

	@Override
	public String toString() {
		return "FilterResultVo [helperStartTime=" + helperStartTime + ", helperEndTime=" + helperEndTime
				+ ", helperWorkArea=" + helperWorkArea + "]";
	}
	
}
