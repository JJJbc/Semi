<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mainSwipe</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
<script
	src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/reset-css@5.0.2/reset.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/common/common.css"
	type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/common/areaAndPlace.css"
	type="text/css" />
<script defer src="${pageContext.request.contextPath}/js/swipe.js"></script>
<script defer src="${pageContext.request.contextPath}/js/movePage.js"></script>
<style type="text/css">
</style>
<script type="text/javascript">
	
</script>
</head>
<body>
	<jsp:include page="/jsp/common/header.jsp" />

	<!-- main 화면 -->
	<div class="main-container">
		<div class="main-container_content">
			<!-- Slider main container -->
			<div class="swiper">
				<!-- Additional required wrapper -->
				<div class="swiper-wrapper">
					<!-- 이미지 -->
					<div class="swiper-slide"><img src="/imgEx/더바움.jpg" /></div>
					<div class="swiper-slide"><img src="/imgEx/카페더킹.jpg" /></div>
					<div class="swiper-slide"><img src="/imgEx/카페이루아.jpg" /></div>
					...
				</div>
				<!-- If we need pagination -->
				<div class="swiper-pagination"></div>

				<!-- 좌우버튼 -->
				<div class="swiper-button-prev"></div>
				<div class="swiper-button-next"></div>

				<!-- 스크롤바 -->
				<div class="swiper-scrollbar"></div>
			</div>
		</div>
	</div>

	<jsp:include page="/jsp/common/footer.jsp" />
</body>
</html>