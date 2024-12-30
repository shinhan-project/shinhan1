<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>${hanokDetail.hanokName}</title>
    <link rel="stylesheet" type="text/css" href="/assets/css/style.css">
    <style>
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }

        .hanok-info, .room, .review {
            margin-top: 40px;
        }

        .room .room-item, .review .review-item {
            border: 1px solid #ddd;
            padding: 15px;
            margin-bottom: 20px;
            border-radius: 5px;
            display: flex;
            align-items: center;
            gap: 15px;
        }

        .room .room-item img, .review .review-item img {
            width: 100px;
            height: 100px;
            object-fit: cover;
            border-radius: 5px;
        }

        .room .room-item div, .review .review-item div {
            flex: 1;
        }

        .review .review-navigation {
            text-align: center;
            margin-top: 20px;
        }

        .review .review-navigation a {
            margin: 0 10px;
            text-decoration: none;
            font-weight: bold;
            color: #007bff;
        }

        .review .review-navigation a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
	<!--헤더-->
    <div id="sep">
        <%@ include file="/WEB-INF/views/include/header.jsp" %>
    </div>
	
    <!--검색-->
    <div id="sep">
    	<%@ include file="/WEB-INF/views/include/hanok_search.jsp" %>
    </div>
    <!-- 한옥 상세 정보 -->
    <div class="container hanok-info">
        <h1>${hanokDetail.hanokName}</h1>
        <p>${hanokDetail.hanokDescription}</p>
    </div>

    <!-- 방 리스트 -->
    <div class="container room">
        <h2>Rooms</h2>
        <c:forEach var="room" items="${roomList}">
            <div class="room-item">
                <img src="/assets/images/hanok/${room.roomImage}" alt="${room.roomName}">
                <div>
                    <h3>${room.roomName}</h3>
                    <p>Price: $${room.roomPrice}</p>
                    <p>Size: ${room.roomSize} sqm</p>
                    <p>Max Capacity: ${room.maxCapacity}</p>
                </div>
            </div>
        </c:forEach>
    </div>

    <!-- 리뷰 리스트 -->
    <div class="container review">
        <h2>Reviews</h2>
        <c:forEach var="review" items="${reviewList}">
            <div class="review-item">
                <img src="/assets/images/reviews/default.png" alt="Review Image">
                <div>
                    <h3>${review.reviewTitle}</h3>
                    <p>${review.reviewContent}</p>
                    <p>Rating: ${review.rating} / 5</p>
                    <p>Date: ${review.reviewDate}</p>
                </div>
            </div>
        </c:forEach>

        <!-- 리뷰 더보기 버튼 -->
        <div class="review-navigation">
            <a href="/more_reviews.do?hanokId=${hanokDetail.hanokId}&page=1">&laquo; Prev</a>
            <a href="/more_reviews.do?hanokId=${hanokDetail.hanokId}&page=2">Next &raquo;</a>
        </div>
    </div>
    
    <!--footer-->
    <div id="sep">
		<%@ include file="/WEB-INF/views/include/footer.jsp" %>
    </div>
</body>
</html>
