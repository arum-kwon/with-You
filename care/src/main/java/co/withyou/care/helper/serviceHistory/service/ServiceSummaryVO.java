package co.withyou.care.helper.serviceHistory.service;

public class ServiceSummaryVO {
	//목록에 보일 항목 환자 사진, 이름, 날짜, 서비스시작시간, 종료시간
	//상세에서 보일 내용 환자 사진, 이름, 나이, 성별, 건강정보, 근무지역, 신청한 시작-종료시간, 실체 출-퇴근시간, 결제금액, 수수료, 수령금액, 요구사항, 후기 및 평졈(본인 작성)

	private int serviceNo;
	private int serviceStartTime;
	private int serviceEndTime;
	private int serviceDate;
	private String patientName;
	public int getServiceNo() {
		return serviceNo;
	}
	public void setServiceNo(int serviceNo) {
		this.serviceNo = serviceNo;
	}
	public int getServiceStartTime() {
		return serviceStartTime;
	}
	public void setServiceStartTime(int serviceStartTime) {
		this.serviceStartTime = serviceStartTime;
	}
	public int getServiceEndTime() {
		return serviceEndTime;
	}
	public void setServiceEndTime(int serviceEndTime) {
		this.serviceEndTime = serviceEndTime;
	}
	public int getServiceDate() {
		return serviceDate;
	}
	public void setServiceDate(int serviceDate) {
		this.serviceDate = serviceDate;
	}
	public String getPatientName() {
		return patientName;
	}
	public void setPatientName(String patientName) {
		this.patientName = patientName;
	}
	
	
	
	
}
