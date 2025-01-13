<!-- hotel-detail.html 참고 (민규) -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>상세페이지 - ${map.hanokInfo.hanok_name}</title>
    <!-- Google Font -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;700&family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

	<!-- Plugins CSS -->
	<link rel="stylesheet" type="text/css" href="/vendor/font-awesome/css/all.min.css">
	<link rel="stylesheet" type="text/css" href="/vendor/bootstrap-icons/bootstrap-icons.css">
	<link rel="stylesheet" type="text/css" href="/vendor/glightbox/css/glightbox.css">
	<link rel="stylesheet" type="text/css" href="/vendor/flatpickr/css/flatpickr.min.css">
	<link rel="stylesheet" type="text/css" href="/vendor/choices/css/choices.min.css">
	<link rel="stylesheet" type="text/css" href="/vendor/tiny-slider/tiny-slider.css">

	<!-- Theme CSS -->
	<link rel="stylesheet" type="text/css" href="/css/style.css">
    <style>
   	    #sep {
        	margin: 20px;
	    }
        body {
	        font-family: 'Arial', sans-serif;
	        line-height: 1.6;
	        background-color: #f9f9f9;
	    }
		
	    .container.hanok-info {
	        display: flex;
	        max-width: 1200px;
	        margin: 0 auto;
	        padding: 20px;
	        background-color: white;
	        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
	        gap: 20px; /* 사진과 텍스트 사이 간격 */
	    }
	
	    .image-section {
	        flex: 1; /* 왼쪽에 사진 */
	        max-width: 500px; /* 사진 최대 너비 제한 */
	    }
	
	    .image-section img {
	        width: 100%;
	        height: auto;
	        border-radius: 10px;
	    }
	
	    .text-section {
	        flex: 2; /* 오른쪽 텍스트 */
	        display: flex;
	        flex-direction: column;
	        justify-content: space-between; /* 위아래 정렬 */
	    }
	
	    .title-section {
	        text-align: left; /* 제목 왼쪽 정렬 */
	    }
	
	    .title-section h1 {
	        font-size: 2em;
	        margin-bottom: 20px;
	    }
	
	    .description-section {
	        text-align: left; /* 설명 왼쪽 정렬 */
	        font-size: 1em;
	        color: #555;
	        line-height: 1.6;
	    }
	
	    .container {
	        flex-wrap: wrap;
	        max-width: 1200px;
	        margin: 0 auto;
	        padding: 20px;
	        background-color: white;
	        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
	    }
	
	    .container.review {
	        max-width: 1200px;
	        margin: auto;
	        flex-direction: column;
	    }
	
	    .container.review {
	        max-width: 1200px;
	        margin: auto;
	        text-align: center;
	        padding: 20px;
	    }
	
	    .image-section {
	        flex: 1;
	        min-width: 300px;
	        max-width: 600px;
	        padding: 10px;
	    }
	
	    .image-section img {
	        width: 100%;
	        height: auto;
	        border-radius: 10px;
	    }
	
	    .text-section {
	        flex: 1;
	        min-width: 300px;
	        padding: 20px;
	    }
	
	    .text-section p {
	        margin-bottom: 15px;
	        color: #555;
	    }
	
	    .text-section h1 {
	        font-size: 2em;
	        margin-bottom: 20px;
	    }
	
	    .card {
	        width: 100%;
	        max-width: 900px;
	        margin: 20px auto;
	        text-align: center;
	    }
	
	    .card-body {
	        display: flex; /* Flexbox 활성화 */
	        flex-wrap: wrap; /* 여러 줄로 정렬 가능 */
	        justify-content: center; /* 수평 정렬 */
	
	    }
	
	    .card-body h6, .card-body ul {
	        width: 100%; /* 각 섹션을 화면 전체로 확장 */
	        max-width: 400px; /* 최대 너비 제한 */
	        margin: auto; /* 수평 정렬 */
	
	    }
	
	
	    .review-list {
	        display: flex;
	        flex-wrap: wrap;
	        gap: 20px;
	        justify-content: center;
	    }
	
	    .review-item {
	        display: flex;
	        flex-direction: column; /* 세로 정렬 */
	        align-items: center; /* 가운데 정렬 */
	        width: calc(33.333% - 20px); /* 가로로 3개 */
	        max-width: 300px;
	        background-color: #fff;
	        padding: 15px;
	        border: 1px solid #ddd;
	        border-radius: 10px;
	        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
	        text-align: center;
	    }
	
	    .review-item img {
	        width: 100%;
	        height: auto;
	        border-radius: 10px;
	        margin-bottom: 15px;
	    }
	
	    .review-content h5 {
	        font-size: 1.2em;
	        margin: 10px 0;
	    }
	
	    .review-content p {
	        margin: 5px 0;
	        font-size: 0.9em;
	        color: #555;
	    }
	
	    .amenities-container {
	        display: flex;
	        gap: 20px;
	
	
	        max-width: 1200px;
	        margin: 0 auto;
	        padding: 20px;
	        background-color: white;
	        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
	    }
	
	    .amenities-item {
	        flex: 1;
	        max-width: 300px;
	        text-align: left;
	    }
	
	    .amenities-item h6 {
	        font-size: 1.2em;
	        margin-bottom: 10px;
	    }
	
	    .amenities-item ul {
	        list-style: none; /* 부트스트랩랩 스타일 제거 */
	        padding: 0;
	    }
	
	    .amenities-item ul li {
	        margin-bottom: 5px;
	        font-size: 0.95em;
	        color: #555;
	        
	    }
	    .room-details {
    text-align: left; /* 왼쪽 정렬 */
}

.room-item {
    display: inline-block; /* 항목들을 inline-block으로 나열 */
    margin-right: 10px; /* 항목 간 간격 */
}
	    
	
	    
    </style>

    <script>
		const storedTheme = localStorage.getItem('theme')
 
        const getPreferredTheme = () => {
            if (storedTheme) {
                return storedTheme
            }
            return window.matchMedia('(prefers-color-scheme: dark)').matches ? 'dark' : 'light'
        }

        const setTheme = function (theme) {
            if (theme === 'auto' && window.matchMedia('(prefers-color-scheme: dark)').matches) {
                document.documentElement.setAttribute('data-bs-theme', 'dark')
            } else {
                document.documentElement.setAttribute('data-bs-theme', theme)
            }
        }


        window.addEventListener('DOMContentLoaded', () => {
    	    // 현재 날짜를 "YYYY-MM-DD" 형식으로 가져오는 함수
    	    const today = new Date().toISOString().split("T")[0];
    	
    	    // 입력 필드 요소 가져오기
    	    const checkInInput = document.getElementById("checkIn");
    	    const checkOutInput = document.getElementById("checkOut");
    	
    	    checkInInput.setAttribute("min", today);
    	    checkOutInput.setAttribute("min", today);
    	
        	
            var el = document.querySelector('.theme-icon-active');
            if(el != 'undefined' && el != null) {
                const showActiveTheme = theme => {
                const activeThemeIcon = document.querySelector('.theme-icon-active use')
                const btnToActive = document.querySelector(`[data-bs-theme-value="${theme}"]`)
                const svgOfActiveBtn = btnToActive.querySelector('.mode-switch use').getAttribute('href')

                document.querySelectorAll('[data-bs-theme-value]').forEach(element => {
                    element.classList.remove('active')
                })

                btnToActive.classList.add('active')
                activeThemeIcon.setAttribute('href', svgOfActiveBtn)
            }

            window.matchMedia('(prefers-color-scheme: dark)').addEventListener('change', () => {
                if (storedTheme !== 'light' || storedTheme !== 'dark') {
                    setTheme(getPreferredTheme())
                }
            })

            showActiveTheme(getPreferredTheme())

            document.querySelectorAll('[data-bs-theme-value]')
                .forEach(toggle => {
                    toggle.addEventListener('click', () => {
                        const theme = toggle.getAttribute('data-bs-theme-value')
                        localStorage.setItem('theme', theme)
                        setTheme(theme)
                        showActiveTheme(theme)
                    })
                })

            }
        })
	</script>
</head>
<body>
	<!--헤더-->

        <%@ include file="/WEB-INF/views/include/header.jsp" %>

	
	
	
<!-- =======================
Search START -->
<section class="py-3 py-sm-0">
	<div class="container">
		<!-- Offcanvas button for search -->
		<button class="btn btn-primary d-sm-none w-100 mb-0" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasEditsearch" aria-controls="offcanvasEditsearch"><i class="bi bi-pencil-square me-2"></i>Edit Search</button>

		<!-- Search with offcanvas START -->
		<div class="offcanvas-sm offcanvas-top" tabindex="-1" id="offcanvasEditsearch" aria-labelledby="offcanvasEditsearchLabel">
			<div class="offcanvas-header">
				<h5 class="offcanvas-title" id="offcanvasEditsearchLabel">Edit search</h5>
				<button type="button" class="btn-close" data-bs-dismiss="offcanvas" data-bs-target="#offcanvasEditsearch" aria-label="Close"></button>
			</div>
			<div class="offcanvas-body p-2">
				<div class="bg-light p-4 rounded w-100">
					<form action="/hanok/hanok_list.do" method="GET">
						<div class="row g-4">
							<!-- Location -->
							<div class="col-md-6 col-lg-4">
								<div class="form-size-lg form-fs-md">
									<!-- input -->
									<label class="form-label">Location</label>
									<input type="text" name="location" class="form-guest-selector form-control form-control-lg selection-result" placeholder="지역을 입력하시오." value="${location}">
								</div>
							</div>
	
							<!-- Check in -->
							<div class="col-md-6 col-lg-3">
								<!-- Date input -->
								<div class="form-fs-md">
									<label class="form-label">Check in</label>
									<input type="date" name="checkIn" id="checkIn" class="form-control form-control-lg flatpickr" data-mode="range" placeholder="날짜를 고르시오." value="${checkInDate}" required>
									<label class="form-label">Check out</label>
									<input type="date" name="checkOut" id="checkOut" class="form-control form-control-lg flatpickr" data-mode="range" placeholder="날짜를 고르시오." value="${checkOutDate}" required>
								</div>
							</div>
	
							<!-- Guest -->
							<div class="col-md-6 col-lg-3">
								<div class="form-fs-md">
									<!-- Dropdown input -->
									<div class="w-100">
										<label class="form-label">Guests</label>
										<div class="dropdown guest-selector me-2">
											<input type="text" name="capacity" class="form-guest-selector form-control form-control-lg selection-result" placeholder="인원 수를 입력하시오." id="dropdownguest" data-bs-auto-close="outside" data-bs-toggle="dropdown" value="${capacity}">
										</div>
									</div>
								</div>
							</div>
	
							<!-- Button -->
							<div class="col-md-6 col-lg-2 mt-md-auto">
								<button class="btn btn-lg btn-primary w-100 mb-0" type="submit"><i class="bi bi-search fa-fw"></i>Search</a>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		<!-- Search with offcanvas END -->
	</div>
</section>
<!-- =======================
Search END -->



    <!-- 한옥 상세 정보 -->
    <div class="container hanok-info">
        <div class="image-section">
            <img src="/images/hanoks/${map.hanokImg}" alt="${map.hanokInfo.hanok_name} 사진">
        </div>
        <div class="text-section">
            <div class="title-section">
            	<a href="${map.hanokInfo.hanok_url}">
                <h1>${map.hanokInfo.hanok_name}</h1></a>  
                <p class="fw-bold mb-0">
					<i class="bi bi-geo-alt me-2"></i>
					<a href="https://map.naver.com/p/search/${map.hanokInfo.hanok_address}">${map.hanokInfo.hanok_address}</a><br>
					<i class="bi bi-geo-alt me-2"></i>
					<a href="${map.hanokInfo.hanok_url}">홈페이지 이동</a>
					<div>연락처 : ${map.hanokInfo.hanok_tel}
				</p>
            </div>
            <div class="description-section">
                <p>${map.hanokInfo.hanok_description}</p>
            </div>
        </div>
    </div>



    <!-- Amenities START -->
	<div class="card bg-transparent">
	    <div class="card-header border-bottom bg-transparent px-0 pt-0">
	        <h3 class="card-title mb-0">Amenities</h3>
	    </div>
	    <div class="card-body pt-4 p-0">
	        <div class="amenities-container">
	            <!-- Payment Method -->
	            <div class="amenities-item">
	                <h6><i class="fa-solid fa-credit-card me-2"></i>Payment Method</h6>
	                <ul>
	                    <li><i class="fa-solid fa-check-circle text-success me-2"></i>카카오 페이, 네이버 페이</li>
	                    <li><i class="fa-solid fa-check-circle text-success me-2"></i>신용/체크카드</li>
	                    <li><i class="fa-solid fa-check-circle text-success me-2"></i>휴대폰 결제</li>
	                </ul>
	            </div>
	            <!-- Services -->
	            <div class="amenities-item">
	                <h6><i class="fa-solid fa-concierge-bell me-2"></i>Services</h6>
	                <ul>
	                	<c:forEach var="amenities" items="${map.activeServices}">
	                        <li><i class="fa-solid fa-check-circle text-success me-2"></i>${amenities}</li>
						</c:forEach>
	                </ul>
	            </div>
	            <!-- Safety & Security -->
	            <div class="amenities-item">
	                <h6><i class="bi bi-shield-fill-check me-2"></i>Safety & Security</h6>
	                <ul>
	                    <li><i class="fa-solid fa-check-circle text-success me-2"></i>Doctor on Call</li>
	                </ul>
	            </div>
	            <div class="amenities-item">
	                <h6><i class="fa-solid fa-volume-up me-2"></i>Staff Language</h6>
	                <ul>
	                    <li><i class="fa-solid fa-check-circle text-success me-2"></i>English</li>
	                    <li><i class="fa-solid fa-check-circle text-success me-2"></i>Korean</li>
	                </ul>
	            </div>
	        </div>
	    </div>
	</div>
	<!-- Amenities END -->



    <!-- Room START -->
    <div class="card bg-transparent" id="room-options">
        <!-- Card header -->
        <div class="card-header border-bottom bg-transparent px-0 pt-0">
            <div class="d-sm-flex justify-content-sm-between align-items-center">
                <h3 class="mb-2 mb-sm-0">Room Options</h3>
            </div>
        </div>

        <!-- Card body START -->
        <div class="card-body pt-4 p-0">
            <div class="vstack gap-4">
	            <c:forEach var="roomVO" items="${map.roomList}">
	                <!-- Room item START -->
	                <div class="card shadow p-3">
	                    <div class="row g-4">
	                        <!-- Card img -->
	                        <div class="col-md-5 position-relative">
	                            <!-- Slider START -->
	                            <div class="tiny-slider arrow-round arrow-xs arrow-dark overflow-hidden rounded-2">
	                                <div class="tiny-slider-inner" data-autoplay="true" data-arrow="true" data-dots="false" data-items="1">
	                                	<c:forEach var="roomImgVO" items="${map.roomImgMap[roomVO.room_id]}">
		                                    <!-- Image item -->
		                                    <div><img src="/images/rooms/${roomImgVO.room_imgName}" alt="Card image"></div>
										</c:forEach>
	                                </div>
	                            </div>
	                            <!-- Slider END -->
	                        </div>

	                     <!-- Card body -->
<div class="col-md-7">
    <div class="card-body d-flex flex-column h-100 p-0">
        <!-- Title -->
        <h5 class="card-title text-start"><a href="/hanok/hanok_booking.do?room_id=${roomVO.room_id}&checkInDate=${param.checkInDate}&checkOutDate=${param.checkOutDate}&capacity=${param.capacity}">${roomVO.room_name}</a></h5>
    
	                                  <!-- 세부사항항 -->
        <div class="room-details">
    <span class="room-item">${roomVO.room_size}평 /</span>
    <span class="room-item">${roomVO.max_capacity}명 수용 가능 /</span>
    <span class="room-item">${roomVO.room_service}</span>
</div>
        <!-- Price and Button -->
        <div class="d-sm-flex justify-content-sm-between align-items-center mt-auto">
            <!-- Button -->
            <div class="d-flex align-items-center">
                <h5 class="fw-bold mb-0 me-1">${roomVO.room_price}</h5>
                <span class="mb-0 me-2">/day</span>
            </div>
            <!-- Price -->
            <div class="mt-3 mt-sm-0">
                <a href="/hanok/hanok_booking.do?hanok_id=${roomVO.hanok_id}&room_id=${roomVO.room_id}&checkInDate=${param.checkInDate}&checkOutDate=${param.checkOutDate}&capacity=${param.capacity}" class="btn btn-sm btn-primary mb-0">예약하기</a>
            </div>       
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <!-- Room item END -->
				</c:forEach>
            </div>
        </div>
        <!-- Card body END -->
    </div>
    <!-- Room END -->



    <!-- 리뷰 리스트 -->
    <div class="container review">
        <h2>Reviews</h2>
            <div class="review-list">
	            <c:forEach var="reviewVO" items="${map.reviewList}">
	                <div class="review-item">
	                    <img src="/images/rooms/100.jpg" alt="Review Image">
	                    <div class="review-content">
	                        <h5>${reviewVO.room_name}</h5>
	                        <p>${reviewVO.review_title}</p>
	                        <p>${reviewVO.review_content}</p>
	                        <p>
	                            ⭐ ${reviewVO.rating}
	                        </p>
	                        <p>Date: ${reviewVO.review_date}</p>
	                    </div>
	                </div>
	            </c:forEach>
            </div>
			<a href="#" class="btn btn-sm btn-primary mb-0" style="margin-top: 20px;">Load more</a>    
    </div>				



    <!--footer-->



    <!-- Back to top -->
    <div class="back-top"></div>

    <!-- Bootstrap JS -->
    <script src="/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

    <!-- Vendors -->
    <script src="/vendor/glightbox/js/glightbox.js"></script>
    <script src="/vendor/choices/js/choices.min.js"></script>
    <script src="/vendor/tiny-slider/tiny-slider.js"></script>
    <script src="/vendor/sticky-js/sticky.min.js"></script>

    <!-- ThemeFunctions -->
    <script src="/js/functions.js"></script>

</body>
</html>
