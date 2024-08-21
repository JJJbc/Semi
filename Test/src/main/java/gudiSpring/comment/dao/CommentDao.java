package gudiSpring.comment.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import gudiSpring.comment.dto.CommentDto.PlaceComment;

public class CommentDao {

	private Connection connection;

	public void setConnection(Connection conn) {
		this.connection = conn;
	}

	// 댓글 추가
	public void addPlaceComment(PlaceComment placeComment) throws SQLException {
		String sql = "INSERT INTO PLACE_COMMENT (PLACE_COMMENT_NO, PLACE_NO, USER_NO, COMMENT_CONTENTS, COMMENT_CRE_DATE, COMMENT_UPDATE_DATE) "
				+ "VALUES (PLACE_COMMENT_NO_SEQ.NEXTVAL, ?, ?, ?, SYSDATE, ?)";

		try (PreparedStatement pstmt = connection.prepareStatement(sql)) {
			pstmt.setInt(1, placeComment.getPlaceNo());
			pstmt.setInt(2, placeComment.getUserNo());
			pstmt.setString(3, placeComment.getCommentContents());
			pstmt.setDate(4, new java.sql.Date(placeComment.getCommentUpdateDate().getTime()));
			pstmt.executeUpdate();
		}
	}

	// 댓글 수정
	public void updatePlaceComment(PlaceComment placeComment) throws SQLException {
		String sql = "UPDATE PLACE_COMMENT SET PLACE_NO = ?, USER_NO = ?, COMMENT_CONTENTS = ?, COMMENT_UPDATE_DATE = ? "
				+ "WHERE PLACE_COMMENT_NO = ?";

		try (PreparedStatement pstmt = connection.prepareStatement(sql)) {
			pstmt.setInt(1, placeComment.getPlaceNo());
			pstmt.setInt(2, placeComment.getUserNo());
			pstmt.setString(3, placeComment.getCommentContents());
			pstmt.setDate(4, new java.sql.Date(placeComment.getCommentUpdateDate().getTime()));
			pstmt.setInt(5, placeComment.getPlaceCommentNo());
			pstmt.executeUpdate();
		}
	}

	// 댓글 삭제
	public void deletePlaceComment(int placeCommentNo) throws SQLException {
		String sql = "DELETE FROM PLACE_COMMENT WHERE PLACE_COMMENT_NO = ?";

		try (PreparedStatement pstmt = connection.prepareStatement(sql)) {
			pstmt.setInt(1, placeCommentNo);
			pstmt.executeUpdate();
		}
	}

	// 댓글 조회 (페이징)
	public List<PlaceComment> selectPlaceCommentList(int placeNo, int startRow, int endRow) throws SQLException {
	    String sql = "SELECT rnum, PLACE_COMMENT_NO, PLACE_NO, USER_NO, COMMENT_CONTENTS, COMMENT_CRE_DATE, COMMENT_UPDATE_DATE "
	            + "FROM ( "
	            + "   SELECT ROWNUM AS rnum, PC.PLACE_COMMENT_NO, PC.PLACE_NO, PC.USER_NO, PC.COMMENT_CONTENTS, PC.COMMENT_CRE_DATE, PC.COMMENT_UPDATE_DATE "
	            + "   FROM PLACE_COMMENT PC "
	            + "   WHERE PC.PLACE_NO = ? "
	            + "   ORDER BY PC.PLACE_COMMENT_NO "
	            + ") "
	            + "WHERE rnum BETWEEN ? AND ?";

	    List<PlaceComment> commentList = new ArrayList<>();

	    try (PreparedStatement pstmt = connection.prepareStatement(sql)) {
	        pstmt.setInt(1, placeNo); // 메서드 파라미터로 사용되는 placeNo

	        pstmt.setInt(2, startRow);
	        pstmt.setInt(3, endRow);

	        try (ResultSet rs = pstmt.executeQuery()) {
	            while (rs.next()) {
	                int placeCommentNo = rs.getInt("PLACE_COMMENT_NO");
	                int placeNoFromDb = rs.getInt("PLACE_NO"); // DB에서 가져오는 placeNo
	                int userNo = rs.getInt("USER_NO");
	                String commentContents = rs.getString("COMMENT_CONTENTS");
	                Date commentCreDate = rs.getDate("COMMENT_CRE_DATE");
	                Date commentUpdateDate = rs.getDate("COMMENT_UPDATE_DATE");

	                // PlaceComment DTO 생성
	                PlaceComment placeComment = new PlaceComment(placeCommentNo, placeNoFromDb, userNo, commentContents, commentCreDate, commentUpdateDate);
	                commentList.add(placeComment);
	            }
	        }
	    }catch (SQLException e) {
	        // 예외 메시지와 스택 트레이스를 로그로 출력	        
	        e.printStackTrace();
	        // 사용자 정의 예외를 던지며, 원래 예외를 포함
	        throw new SQLException(e);
	    }
	    return commentList;
	}


	// 댓글 총 개수 조회
	public int getTotalCount(int placeNo) throws SQLException {
		String sql = "SELECT COUNT(PLACE_COMMENT_NO) FROM PLACE_COMMENT WHERE PLACE_NO = ?";

		try (PreparedStatement pstmt = connection.prepareStatement(sql)) {
			pstmt.setInt(1, placeNo);

			try (ResultSet rs = pstmt.executeQuery()) {
				if (rs.next()) {
					return rs.getInt(1);
				}
				return 0;
			}
		}
	}
}
