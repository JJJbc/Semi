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
	href="${pageContext.request.contextPath}/css/event/mainEvent.css">
<link rel="stylesheet"
	<%-- 	href="${pageContext.request.contextPath}/css/main/main.css" --%>
	type="text/css" />
<!-- swiper -->
<link rel="stylesheet"
	href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
<!-- icon -->
<link rel="stylesheet"
	href="http://fonts.googleapis.com/icon?family=Material+Icons">
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
	<div id="main-container">
		<div class="main-container__content">
			<!-- Slider main container -->
			<div class="swiper">
				<div class="swiper-wrapper">
				<c:forEach var="placeDto" items="${randomPlaceList}">
					<div class="swiper-slide">
						<c:if test="${placeDto.category eq '펜션'}">
							<a href="${pageContext.request.contextPath}/area/place/pension/infomation?placeNo=${placeDto.placeNo}">
								<img src="/img/place/${placeDto.plImgPath}" alt="${placeDto.placeName}" />
							</a>
						</c:if>
						
						<c:if test="${placeDto.category eq '식당'}">
							<a href="${pageContext.request.contextPath}/area/place/restaurant/infomation?placeNo=${placeDto.placeNo}">
								<img src="/img/place/${placeDto.plImgPath}" alt="${placeDto.placeName}" />
							</a>
						</c:if>
						
						<c:if test="${placeDto.category eq '카페'}">
							<a href="${pageContext.request.contextPath}/area/place/cafe/infomation?placeNo=${placeDto.placeNo}">
								<img src="/img/place/${placeDto.plImgPath}" alt="${placeDto.placeName}" />
							</a>
						</c:if>
					</div>
				</c:forEach>
				</div>
				
				<div class="swiper-pagination"></div>

				<div class="swiper-button-prev">
					<div class="material-icons">arrow_back</div>
				</div>
				<div class="swiper-button-next">
					<div class="material-icons">arrow_forward</div>
				</div>
			</div>
		</div>
	</div>


	<jsp:include page="/jsp/common/footer.jsp" />
</body>
</html>