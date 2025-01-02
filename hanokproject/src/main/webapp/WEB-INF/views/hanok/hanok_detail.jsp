v<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Booking - ${hanokDetail.hanokName}</title>
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
	        display: flex;
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
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2e33104a3d3806db0c046e27726eebf8"></script>
	<script>
	window.addEventListener('DOMContentLoaded', () => {
		const container = document.getElementById('map');
		const options = {
	        center: new kakao.maps.LatLng(33.450701, 126.570667),
	        level: 3
	    };
	
	    // 지도를 생성합니다    
	    const map = new kakao.maps.Map(mapContainer, mapOption); 
	
	    // 주소-좌표 변환 객체를 생성합니다
	    const geocoder = new kakao.maps.services.Geocoder();
	
	    // 주소로 좌표를 검색합니다
	    geocoder.addressSearch('제주특별자치도 제주시 첨단로 242', function(result, status) {
	
	        // 정상적으로 검색이 완료됐으면 
	        if (status === kakao.maps.services.Status.OK) {
	
	        	const coords = new kakao.maps.LatLng(result[0].y, result[0].x);
	
	            // 결과값으로 받은 위치를 마커로 표시합니다
	            const marker = new kakao.maps.Marker({
	                map: map,
	                position: coords
	            });
	
	            // 인포윈도우로 장소에 대한 설명을 표시합니다
	            const infowindow = new kakao.maps.InfoWindow({
	                content: '<div style="width:150px;text-align:center;padding:6px 0;">우리회사</div>'
	            });
	            infowindow.open(map, marker);
	
	            // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
	            map.setCenter(coords);
	        } 
	    });  
	}
	</script>
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
        <div class="image-section">
            <img src="/images/담소정.png" alt="담소정 사진">
        </div>
        <div class="text-section">
            <div class="title-section">
                <h1>담소정</h1>
            </div>
            <div class="description-section">
                <p>담소정은 조상의 숨결이 살아있는 북촌한옥마을에 위치해 있다. 도시 안에 편안하고 멋진 풍경이 어우러진 한옥에서 가족과 연인, 친구와 함께 좋은 시간을 보낼 수 있는 한옥이다. 3호선 안국역 주변에 위치하여 교통이 편리하다. 드라마 '별에서 온 그대'의 400년 전 도민준 생가로 유명한 곳이다. 한옥의 대청마루에서는 고즈넉한 100년 한옥의 정취를 느끼며 사계절을 느낄 수 있다.</p>
            </div>
            <div class="description-section">
                <p>
                    <div id="map" style="width:500px;height:400px;"></div>
                </p>
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
                    <li><i class="fa-solid fa-check-circle text-success me-2"></i>무통장 입금</li>
                </ul>
            </div>
            <!-- Services -->
            <div class="amenities-item">
                <h6><i class="fa-solid fa-concierge-bell me-2"></i>Services</h6>
                <ul>
                    <li><i class="fa-solid fa-check-circle text-success me-2"></i>OTT</li>
                    <li><i class="fa-solid fa-check-circle text-success me-2"></i>무료 인터넷</li>
                    <li><i class="fa-solid fa-check-circle text-success me-2"></i>반려 동물 동반</li>
                    <li><i class="fa-solid fa-check-circle text-success me-2"></i>취사 가능</li>
                    <li><i class="fa-solid fa-check-circle text-success me-2"></i>무료 주차</li>
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
                <!-- Room item START -->
                <div class="card shadow p-3">
                    <div class="row g-4">
                        <!-- Card img -->
                        <div class="col-md-5 position-relative">
                            <!-- Slider START -->
                            <div class="tiny-slider arrow-round arrow-xs arrow-dark overflow-hidden rounded-2">
                                <div class="tiny-slider-inner" data-autoplay="true" data-arrow="true" data-dots="false" data-items="1">
                                    <!-- Image item -->
                                    <div><img src="/images/category/hotel/4by3/04.jpg" alt="Card image"></div>

                                    <!-- Image item -->
                                    <div><img src="/images/category/hotel/4by3/02.jpg" alt="Card image"></div>

                                    <!-- Image item -->
                                    <div><img src="/images/category/hotel/4by3/03.jpg" alt="Card image"></div>

                                    <!-- Image item -->
                                    <div><img src="/images/category/hotel/4by3/01.jpg" alt="Card image"></div>
                                </div>
                            </div>
                            <!-- Slider END -->
                        </div>

                        <!-- Card body -->
                        <div class="col-md-7">
                            <div class="card-body d-flex flex-column h-100 p-0">
    
                                <!-- Title -->
                                <h5 class="card-title"><a href="#">Luxury Room with Balcony</a></h5>

                                <!-- 세부사항항 -->
                                <ul class="nav nav-divider mb-2">
                                    <li class="nav-item">13평</li>
                                    <li class="nav-item">2명 수용 가능</li>
                                </ul>                                
                                <!-- Price and Button -->
                                <div class="d-sm-flex justify-content-sm-between align-items-center mt-auto">
                                    <!-- Button -->
                                    <div class="d-flex align-items-center">
                                        <h5 class="fw-bold mb-0 me-1">25000원</h5>
                                        <span class="mb-0 me-2">/day</span>
                                    </div>
                                    <!-- Price -->
                                    <div class="mt-3 mt-sm-0">
                                        <a href="#" class="btn btn-sm btn-primary mb-0">예약하기</a>    
                                    </div>                  
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Room item END -->

                <!-- Room item START -->
                <div class="card shadow p-3">
                    <div class="row g-4">
                        <!-- Card img -->
                        <div class="col-md-5 position-relative">

                            <!-- Slider START -->
                            <div class="tiny-slider arrow-round arrow-xs arrow-dark overflow-hidden rounded-2">
                                <div class="tiny-slider-inner" data-autoplay="true" data-arrow="true" data-dots="false" data-items="1">
                                    <!-- Image item -->
                                    <div><img src="/images/category/hotel/4by3/03.jpg" alt="Card image"></div>

                                    <!-- Image item -->
                                    <div><img src="/images/category/hotel/4by3/02.jpg" alt="Card image"></div>

                                    <!-- Image item -->
                                    <div><img src="/images/category/hotel/4by3/04.jpg" alt="Card image"></div>

                                    <!-- Image item -->
                                    <div><img src="/images/category/hotel/4by3/01.jpg" alt="Card image"></div>
                                </div>
                            </div>
                            <!-- Slider END -->

                        </div>

                        <!-- Card body -->
                        <div class="col-md-7">
                            <div class="card-body d-flex flex-column p-0 h-100">
    
                                <!-- Title -->
                                <h5 class="card-title"><a href="#">Deluxe Pool View with Breakfast</a></h5>

                                <!-- Amenities -->
                                <ul class="nav nav-divider mb-2">
                                    <li class="nav-item">18평</li>
                                    <li class="nav-item">3명 수용 가능</li>
                                </ul>
    
                                <!-- Price and Button -->
                                <div class="d-sm-flex justify-content-sm-between align-items-center mt-auto">
                                    <!-- Button -->
                                    <div class="d-flex align-items-center">
                                        <h5 class="fw-bold mb-0 me-1">30000원</h5>
                                        <span class="mb-0 me-2">/day</span>
                                    </div>
                                    <!-- Price -->
                                    <div class="mt-3 mt-sm-0">
                                        <a href="#" class="btn btn-sm btn-primary mb-0">예약하기</a>    
                                    </div>                  
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Room item END -->
            </div>
        </div>
        <!-- Card body END -->
    </div>
    <!-- Room END -->

    <!-- 리뷰 리스트 -->
        <div class="container review">
        <h2>Reviews</h2>
            <div class="review-list">
                <div class="review-item">
                    <img src="/images/rooms/100.jpg" alt="Review Image">
                    <div class="review-content">
                        <h5>Dam(담)</h5>
                        <p>바베큐장이 굉장히 만족스러웠습니다. 시설도 깔끔해서 외국인 친구에게 추천해주고 싶습니다.</p>
                        <p>
                            <img src="/images/detail_rating.png" alt="Rating" style="width: 20px; height:20px;"> 4.0
                        </p>
                        <p>Date: 24.04.22</p>
                    </div>
                </div>
                <div class="review-item">
                    <img src="/images/rooms/101.jpg" alt="Review Image">
                    <div class="review-content">
                        <h5>Dam(담)</h5>
                        <p>바베큐장이 굉장히 만족스러웠습니다. 시설도 깔끔해서 외국인 친구에게 추천해주고 싶습니다.</p>
                        <p>
                            <img src="/images/detail_rating.png" alt="Rating" style="width: 20px; height:20px;"> 4.0
                        </p>
                        <p>Date: 24.04.22</p>
                    </div>
                </div>
                <div class="review-item">
                    <img src="/images/rooms/102.jpg" alt="Review Image">
                    <div class="review-content">
                        <h5>Dam(담)</h5>
                        <p>바베큐장이 굉장히 만족스러웠습니다. 시설도 깔끔해서 외국인 친구에게 추천해주고 싶습니다.</p>
                        <p>
                            <img src="/images/detail_rating.png" alt="Rating" style="width: 20px; height:20px;"> 4.0
                        </p>
                        <p>Date: 24.04.22</p>
                    </div>
                </div>
            </div>
        </div>

    <!--footer-->
    <div id="sep">
		<%@ include file="/WEB-INF/views/include/footer.jsp" %>
    </div>

    <!-- Back to top -->
    <div class="back-top"></div>

    <!-- Bootstrap JS -->
    <script src="/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

    <!-- Vendors -->
    <script src="/vendor/glightbox/js/glightbox.js"></script>
    <script src="/vendor/flatpickr/js/flatpickr.min.js"></script>
    <script src="/vendor/choices/js/choices.min.js"></script>
    <script src="/vendor/tiny-slider/tiny-slider.js"></script>
    <script src="/vendor/sticky-js/sticky.min.js"></script>

    <!-- ThemeFunctions -->
    <script src="/js/functions.js"></script>

</body>
</html>
