package gudiSpring.place.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import gudiSpring.place.dto.PlaceDto;

public class PlaceDao {

	private Connection connection;

	public void setConnection(Connection connection) {
		this.connection = connection;
	}
<<<<<<< HEAD

	// 랜덤장소 뽑기
	public List<PlaceDto> getRandomPlace(int[] randomPlaceNos) {
=======
	
	public List<PlaceDto> getRandomPlace(){
>>>>>>> refs/remotes/origin/master
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<PlaceDto> randomPlaceList = new ArrayList<>();
		PlaceDto placeDto = null;
		
		try {
			String sql = "";
			sql += "SELECT PLACE_NO, PLACE_NAME, CATEGORY, PLACE_IMG_PATH";
			sql += " FROM PLACE";
			sql += " WHERE PLACE_NO = ?";
			
<<<<<<< HEAD
			 pstmt = connection.prepareStatement(sql);
=======
			pstmt = connection.prepareStatement(sql);			
			rs = pstmt.executeQuery();
>>>>>>> refs/remotes/origin/master
			
			for (int i = 0; i < randomPlaceNos.length; i++) {
	            pstmt.setInt(1, randomPlaceNos[i]);
	            rs = pstmt.executeQuery();

				while (rs.next()) {
					placeDto = new PlaceDto(
							rs.getInt("PLACE_NO"),
							rs.getString("PLACE_NAME"),
							rs.getString("CATEGORY"),
							rs.getString("PLACE_IMG_PATH")
						);
					randomPlaceList.add(placeDto);
				}
				
				 if (rs != null) {
		                rs.close();
		            }
	         }
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
				
			try {
				if (rs != null) {
					rs.close();
				}

				if (pstmt != null) {
					pstmt.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} // finally 종료

		return randomPlaceList;
	}

	// 데이터 안에 PLACE_NO 마지막 번호 찾기
	public int getLastPlaceNo() {
		int result = 0;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			String sql = "";
			sql += "SELECT PLACE_NO";
			sql += " FROM PLACE";
			sql += " WHERE ROWNUM <= 1";
			sql += " ORDER BY PLACE_NO DESC";

			pstmt = connection.prepareStatement(sql);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				result = rs.getInt(1);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {

			try {
				if (rs != null) {
					rs.close();
				}

				if (pstmt != null) {
					pstmt.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} // finally 종료

		return result;
	}
}
