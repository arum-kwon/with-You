package co.withyou.care.admin.AdminPayResult.service;

public class AdminPayVo {

	private String imp_Uid;
	private String merchant_Uid;
	private String apply_Num;
	private String familyName;
	private int paid_Amount;
	private int familyNo;
	private int serviceNo;

	
	public String getFamilyName() {
		return familyName;
	}

	public void setFamilyName(String familyName) {
		this.familyName = familyName;
	}

	public String getImp_Uid() {
		return imp_Uid;
	}

	public void setImp_Uid(String imp_Uid) {
		this.imp_Uid = imp_Uid;
	}

	public String getMerchant_Uid() {
		return merchant_Uid;
	}

	public void setMerchant_Uid(String merchant_Uid) {
		this.merchant_Uid = merchant_Uid;
	}

	public String getApply_Num() {
		return apply_Num;
	}

	public void setApply_Num(String apply_Num) {
		this.apply_Num = apply_Num;
	}

	public int getPaid_Amount() {
		return paid_Amount;
	}

	public void setPaid_Amount(int paid_Amount) {
		this.paid_Amount = paid_Amount;
	}

	public int getFamilyNo() {
		return familyNo;
	}

	public void setFamilyNo(int familyNo) {
		this.familyNo = familyNo;
	}

	public int getServiceNo() {
		return serviceNo;
	}

	public void setServiceNo(int serviceNo) {
		this.serviceNo = serviceNo;
	}

	@Override
	public String toString() {
		return "AdminPayVo [imp_Uid=" + imp_Uid + ", merchant_Uid=" + merchant_Uid + ", apply_Num=" + apply_Num
				+ ", paid_Amount=" + paid_Amount + ", familyNo=" + familyNo + ", serviceNo=" + serviceNo + "]";
	}

}