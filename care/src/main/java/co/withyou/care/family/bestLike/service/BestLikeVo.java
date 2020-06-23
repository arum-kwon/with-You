package co.withyou.care.family.bestLike.service;

public class BestLikeVo {
	private int helperNo;
	private int familyNo;
	
	public BestLikeVo() {
		// TODO Auto-generated constructor stub
	}

	public int getHelperNo() {
		return helperNo;
	}

	public void setHelperNo(int helperNo) {
		this.helperNo = helperNo;
	}

	public int getFamilyNo() {
		return familyNo;
	}

	public void setFamilyNo(int familyNo) {
		this.familyNo = familyNo;
	}

	@Override
	public String toString() {
		return "BestLikeVo [helperNo=" + helperNo + ", familyNo=" + familyNo + "]";
	}

}
