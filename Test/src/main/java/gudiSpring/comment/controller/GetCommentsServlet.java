package gudiSpring.comment.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import org.apache.tomcat.jdbc.pool.DataSource;

import gudiSpring.comment.dao.CommentDao;
import gudiSpring.comment.dto.CommentDto.PlaceComment;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/area/place/cafe/placeComments")
public class GetCommentsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        int recordsPerPage = 10; // 한 페이지에 보여줄 댓글 수
        int page = req.getParameter("page") != null ? Integer.parseInt(req.getParameter("page")) : 1; // 현재 페이지
        int startRow = (page - 1) * recordsPerPage + 1; // 시작 행 번호
        int endRow = page * recordsPerPage; // 끝 행 번호

        Connection conn = null;

        try {
            ServletContext sc = this.getServletContext();
            conn = (Connection) sc.getAttribute("conn");

            String placeNoParam = req.getParameter("placeNo");
            int placeNo = 0;

            if (placeNoParam != null && !placeNoParam.isEmpty()) {
                try {
                    placeNo = Integer.parseInt(placeNoParam);
                } catch (NumberFormatException e) {
                    e.printStackTrace();                   
                    return;
                }
            }

            // CommentDao를 생성할 때 Connection 객체를 전달
            CommentDao commentDao = new CommentDao();
            commentDao.setConnection(conn);

            // 댓글 목록 가져오기
            List<PlaceComment> commentList = commentDao.selectPlaceCommentList(placeNo, startRow, endRow);

            // 총 댓글 개수 조회
            int totalRecords = commentDao.getTotalCount(placeNo);
            int totalPages = (int) Math.ceil(totalRecords * 1.0 / recordsPerPage);

            // JSP로 데이터 전달
            req.setAttribute("totalPages", totalPages);
            req.setAttribute("currentPage", page);
            req.setAttribute("commentList", commentList);

            RequestDispatcher dispatcher = req.getRequestDispatcher("/jsp/place/cafe/cafeListView.jsp");
            dispatcher.forward(req, res);
        } catch (SQLException e) {
            e.printStackTrace();           
        } finally {
            if (conn != null) {
                try {
                    conn.close(); // 커넥션을 반환합니다.
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
