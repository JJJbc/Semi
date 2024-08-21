package gudiSpring.comment.dto;

import java.util.Date;

public class CommentDto {
	
	public class PlaceComment {
	    private int placeCommentNo;
	    private int placeNo;
	    private int userNo;
	    private String commentContents;
	    private Date commentCreDate;
	    private Date commentUpdateDate;

	    // 기본 생성자
	    public PlaceComment() {
	    }

	    // 매개변수 있는 생성자
	    public PlaceComment(int placeCommentNo, int placeNo, int userNo, String commentContents, Date commentCreDate, Date commentUpdateDate) {
	        this.placeCommentNo = placeCommentNo;
	        this.placeNo = placeNo;
	        this.userNo = userNo;
	        this.commentContents = commentContents;
	        this.commentCreDate = commentCreDate;
	        this.commentUpdateDate = commentUpdateDate;
	    }

	    // Getters and Setters
	    public int getPlaceCommentNo() {
	        return placeCommentNo;
	    }

	    public void setPlaceCommentNo(int placeCommentNo) {
	        this.placeCommentNo = placeCommentNo;
	    }

	    public int getPlaceNo() {
	        return placeNo;
	    }

	    public void setPlaceNo(int placeNo) {
	        this.placeNo = placeNo;
	    }

	    public int getUserNo() {
	        return userNo;
	    }

	    public void setUserNo(int userNo) {
	        this.userNo = userNo;
	    }

	    public String getCommentContents() {
	        return commentContents;
	    }

	    public void setCommentContents(String commentContents) {
	        this.commentContents = commentContents;
	    }

	    public Date getCommentCreDate() {
	        return commentCreDate;
	    }

	    public void setCommentCreDate(Date commentCreDate) {
	        this.commentCreDate = commentCreDate;
	    }

	    public Date getCommentUpdateDate() {
	        return commentUpdateDate;
	    }

	    public void setCommentUpdateDate(Date commentUpdateDate) {
	        this.commentUpdateDate = commentUpdateDate;
	    }

	    @Override
	    public String toString() {
	        return "PlaceComment{" +
	                "placeCommentNo=" + placeCommentNo +
	                ", placeNo=" + placeNo +
	                ", userNo=" + userNo +
	                ", commentContents='" + commentContents + '\'' +
	                ", commentCreDate=" + commentCreDate +
	                ", commentUpdateDate=" + commentUpdateDate +
	                '}';
	    }
	}

}
