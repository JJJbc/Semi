package gudiSpring.place.dto;

public class PlaceDto {
	
	private int placeNo;
	private String placeName;
	private String plAddress;
	private String category;
	private String plPhone;
	private String plWebsite;
	private String plImgPath;
	private int genReservation;
	private int recoReservation;
	
	public PlaceDto() {
	}

	public PlaceDto(int placeNo, String placeName, String category, String plImgPath) {
		super();
		this.placeNo = placeNo;
		this.placeName = placeName;
		this.category = category;
		this.plImgPath = plImgPath;
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

	public String getPlAddress() {
		return plAddress;
	}

	public void setPlAddress(String plAddress) {
		this.plAddress = plAddress;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
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

	@Override
	public String toString() {
		return "PlaceDto [placeNo=" + placeNo + ", placeName=" + placeName + ", plAddress=" + plAddress + ", category="
				+ category + ", plPhone=" + plPhone + ", plWebsite=" + plWebsite + ", plImgPath=" + plImgPath
				+ ", genReservation=" + genReservation + ", recoReservation=" + recoReservation + "]";
	}
	
	

}
