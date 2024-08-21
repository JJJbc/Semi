package gudiSpring.place.dto.cafe;

public class CafeDto {

	private int placeNo;
	private String placeName;
	private String plAddress;
	private String category;
	private String plPhone;
	private String plWebsite;
	private String plImgPath;
	private int genReservation;
	private int recoReservation;
	
	public CafeDto() {
	}

	public CafeDto(String placeName, int placeNo, String plImgPath) {
		this.placeName = placeName;
		this.placeNo = placeNo;
		this.plImgPath = plImgPath;
	}

	public CafeDto(String placeName, String plAddress, String plPhone, String plWebsite, String plImgPath, int genReservation) {
		super();
		this.placeName = placeName;
		this.plAddress = plAddress;
		this.plPhone = plPhone;
		this.plWebsite = plWebsite;
		this.plImgPath = plImgPath;
		this.genReservation = genReservation;

	}	
		
	public CafeDto(int placeNo, String placeName, String plAddress, String category, String plPhone, String plWebsite,
			String plImgPath, int recoReservation) {
		super();
		this.placeNo = placeNo;
		this.placeName = placeName;
		this.plAddress = plAddress;
		this.category = category;
		this.plPhone = plPhone;
		this.plWebsite = plWebsite;
		this.plImgPath = plImgPath;
		this.recoReservation = recoReservation;
	}

	public int getPlaceNo() {
		return placeNo;
	}

	public void setPlaceNo(int placeNo) {
		this.placeNo = placeNo;
	}

	public String getPlaceName() {
		return placeName;
	}

	public void setPlaceName(String placeName) {
		this.placeName = placeName;
	}

	public String getplAddress() {
		return plAddress;
	}

	public void setplAddress(String plAddress) {
		this.plAddress = plAddress;
	}

	public String getPlPhone() {
		return plPhone;
	}

	public void setPlPhone(String plPhone) {
		this.plPhone = plPhone;
	}

	public String getPlWebsite() {
		return plWebsite;
	}

	public void setPlWebsite(String plWebsite) {
		this.plWebsite = plWebsite;
	}

	public String getPlImgPath() {
		return plImgPath;
	}

	public void setPlImgPath(String plImgPath) {
		this.plImgPath = plImgPath;
	}
	

	public int getGenReservation() {
		return genReservation;
	}

	public void setGenReservation(int genReservation) {
		this.genReservation = genReservation;
	}

	public int getRecoReservation() {
		return recoReservation;
	}

	public void setRecoReservation(int recoReservation) {
		this.recoReservation = recoReservation;
	}	

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	@Override
	public String toString() {
		return "CafeDto [placeNo=" + placeNo + ", placeName=" + placeName + ", plAddress=" + plAddress + ", category="
				+ category + ", plPhone=" + plPhone + ", plWebsite=" + plWebsite + ", plImgPath=" + plImgPath
				+ ", genReservation=" + genReservation + ", recoReservation=" + recoReservation + "]";
	}

}
