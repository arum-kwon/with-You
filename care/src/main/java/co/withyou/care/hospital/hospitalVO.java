package co.withyou.care.hospital;

public class hospitalVO {
	//광명요양병원 기준
		private String  BIZPLC_NM; //사업장명
		private String  REFINE_WGS84_LOGT; //wgs84 경도
		private String REFINE_WGS84_LAT;	//wgs84 위도
		private String REFINE_ROADNM_ADDR;	//소재지 도로명 주소
		private String HOSPTLRM_CNT;	//입원실 개수
		private String MEDSTAF_CNT;		//간호사수
		
		public String getBIZPLC_NM() {
			return BIZPLC_NM;
		}
		public void setBIZPLC_NM(String bIZPLC_NM) {
			BIZPLC_NM = bIZPLC_NM;
		}
		public String getREFINE_WGS84_LOGT() {
			return REFINE_WGS84_LOGT;
		}
		public void setREFINE_WGS84_LOGT(String rEFINE_WGS84_LOGT) {
			REFINE_WGS84_LOGT = rEFINE_WGS84_LOGT;
		}
		public String getREFINE_WGS84_LAT() {
			return REFINE_WGS84_LAT;
		}
		public void setREFINE_WGS84_LAT(String rEFINE_WGS84_LAT) {
			REFINE_WGS84_LAT = rEFINE_WGS84_LAT;
		}
		public String getREFINE_ROADNM_ADDR() {
			return REFINE_ROADNM_ADDR;
		}
		public void setREFINE_ROADNM_ADDR(String rEFINE_ROADNM_ADDR) {
			REFINE_ROADNM_ADDR = rEFINE_ROADNM_ADDR;
		}
		public String getHOSPTLRM_CNT() {
			return HOSPTLRM_CNT;
		}
		public void setHOSPTLRM_CNT(String hOSPTLRM_CNT) {
			HOSPTLRM_CNT = hOSPTLRM_CNT;
		}
		public String getMEDSTAF_CNT() {
			return MEDSTAF_CNT;
		}
		public void setMEDSTAF_CNT(String mEDSTAF_CNT) {
			MEDSTAF_CNT = mEDSTAF_CNT;
		}

		
}
