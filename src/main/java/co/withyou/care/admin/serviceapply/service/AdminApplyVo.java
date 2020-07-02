package co.withyou.care.admin.serviceapply.service;

import java.util.Date;

public class AdminApplyVo {

	private int serviceNo;
	private int serviceStartTime;
	private int helperPrice;
	private String serviceStatus;
	private int serviceEndTime;
	private int servicePrice;
	private Date serviceDate;
	private String serviceDemand;
	private int helperNo;
	private int patientNo;
	private Date applyDate;
	private String serviceArea;
	private int familyNo;
	private Date realStartTime;
	private Date realEndTime;

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

	public int getHelperPrice() {
		return helperPrice;
	}

	public void setHelperPrice(int helperPrice) {
		this.helperPrice = helperPrice;
	}

	public String getServiceStatus() {
		return serviceStatus;
	}

	public void setServiceStatus(String serviceStatus) {
		this.serviceStatus = serviceStatus;
	}

	public int getServiceEndTime() {
		return serviceEndTime;
	}

	public void setServiceEndTime(int serviceEndTime) {
		this.serviceEndTime = serviceEndTime;
	}

	public int getServicePrice() {
		return servicePrice;
	}

	public void setServicePrice(int servicePrice) {
		this.servicePrice = servicePrice;
	}

	public Date getServiceDate() {
		return serviceDate;
	}

	public void setServiceDate(Date serviceDate) {
		this.serviceDate = serviceDate;
	}

	public String getServiceDemand() {
		return serviceDemand;
	}

	public void setServiceDemand(String serviceDemand) {
		this.serviceDemand = serviceDemand;
	}

	public int getHelperNo() {
		return helperNo;
	}

	public void setHelperNo(int helperNo) {
		this.helperNo = helperNo;
	}

	public int getPatientNo() {
		return patientNo;
	}

	public void setPatientNo(int patientNo) {
		this.patientNo = patientNo;
	}

	public Date getApplyDate() {
		return applyDate;
	}

	public void setApplyDate(Date applyDate) {
		this.applyDate = applyDate;
	}

	public String getServiceArea() {
		return serviceArea;
	}

	public void setServiceArea(String serviceArea) {
		this.serviceArea = serviceArea;
	}

	public int getFamilyNo() {
		return familyNo;
	}

	public void setFamilyNo(int familyNo) {
		this.familyNo = familyNo;
	}

	public Date getRealStartTime() {
		return realStartTime;
	}

	public void setRealStartTime(Date realStartTime) {
		this.realStartTime = realStartTime;
	}

	public Date getRealEndTime() {
		return realEndTime;
	}

	public void setRealEndTime(Date realEndTime) {
		this.realEndTime = realEndTime;
	}
}
