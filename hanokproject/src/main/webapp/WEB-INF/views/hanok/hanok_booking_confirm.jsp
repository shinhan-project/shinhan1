<!-- booking-confirm.html 참고 (민규) -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Meta Tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="author" content="Webestica.com">
<meta name="description" content="Booking - Multipurpose Online Booking Theme">
<title>예약 완료</title>
<!-- Google Font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;700&family=Poppins:wght@400;500;700&display=swap">

<!-- Plugins CSS -->
<link rel="stylesheet" type="text/css" href="/vendor/font-awesome/css/all.min.css">
<link rel="stylesheet" type="text/css" href="/vendor/bootstrap-icons/bootstrap-icons.css">
<link rel="stylesheet" type="text/css" href="/vendor/glightbox/css/glightbox.css">

<!-- Theme CSS -->
<link rel="stylesheet" type="text/css" href="/css/style.css">
</head>
<body>
	<!--헤더-->
    <div id="sep">
        <%@ include file="/WEB-INF/views/include/header.jsp" %>
    </div>
    
    
    
    <!-- **************** MAIN CONTENT START **************** -->
<main>

    <!-- =======================
    Main content START -->
    <section class="pt-4">
        <div class="container">
            <div class="row">
                <div class="col-md-10 col-xl-8 mx-auto">
    
                    <div class="card shadow">
                        <!-- Image -->
                        <img src="/images/hanoks/${hanok_imgName}" class="rounded-top" alt="한옥사진">
    
                        <!-- Card body -->
                        <div class="card-body text-center p-4">
                            <!-- Title -->
                            <h1 class="card-title fs-3">🎊 예약이 완료되었습니다. 🎊</h1>
                            <p class="lead mb-3"> </p>
    
                            <!-- Second title -->
                            <h5 class="text-primary mb-4"></h5>
    
                            <!-- List -->
                            <div class="row justify-content-between text-start mb-4">
                                <div class="col-lg-5">
                                    <ul class="list-group list-group-borderless">
                                        <li class="list-group-item d-sm-flex justify-content-between align-items-center">
                                            <span class="mb-0"><i class="bi bi-vr fa-fw me-2"></i>예약 번호:</span>
                                            <span class="h6 fw-normal mb-0">${reservations_id}</span>
                                        </li>
                                        <li class="list-group-item d-sm-flex justify-content-between align-items-center">
                                            <span class="mb-0"><i class="bi bi-person fa-fw me-2"></i>예약자 성함:</span>
                                            <span class="h6 fw-normal mb-0">${reservation_name}</span>
                                        </li>
                                        <li class="list-group-item d-sm-flex justify-content-between align-items-center">
                                            <span class="mb-0"><i class="bi bi-person fa-fw me-2"></i>예약자 전화번호:</span>
                                            <span class="h6 fw-normal mb-0">${phone}</span>
                                        </li>
                                        <li class="list-group-item d-sm-flex justify-content-between align-items-center">
                                            <span class="mb-0"><i class="bi bi-vr fa-fw me-2"></i>숙소명:</span>
                                            <span class="h6 fw-normal mb-0">${hanokMap.hanokInfo.hanok_name}</span>
                                        </li>
                                        <li class="list-group-item d-sm-flex justify-content-between align-items-center">
                                            <span class="mb-0"><i class="bi bi-vr fa-fw me-2"></i>숙소 연락처:</span>
                                            <span class="h6 fw-normal mb-0">${hanokMap.hanokInfo.hanok_tel}</span>
                                        </li>
                                        <li class="list-group-item d-sm-flex justify-content-between align-items-center">
                                            <span class="mb-0"><i class="bi bi-vr fa-fw me-2"></i>숙소 위치:</span>
                                            <span class="h6 fw-normal mb-0">${hanokMap.hanokInfo.hanok_address}</span>
                                        </li>
                                        <li class="list-group-item d-sm-flex justify-content-between align-items-center">
                                            <span class="mb-0"><i class="bi bi-vr fa-fw me-2"></i>객실명:</span>
                                            <span class="h6 fw-normal mb-0">${roomMap.roomInfo.room_name}</span>
                                        </li>
                                    </ul>
                                </div>
    
                                <div class="col-lg-5">
                                    <ul class="list-group list-group-borderless">
                                        <li class="list-group-item d-sm-flex justify-content-between align-items-center">
                                            <span class="mb-0"><i class="bi bi-wallet2 fa-fw me-2"></i>결제 수단:</span>
                                            <span class="h6 fw-normal mb-0">${pay_type}</span>
                                        </li>
                                        <li class="list-group-item d-sm-flex justify-content-between align-items-center">
                                            <span class="mb-0"><i class="bi bi-currency-dollar fa-fw me-2"></i>결제 금액:</span>
                                            <span class="h6 fw-normal mb-0">${roomMap.roomInfo.room_price}</span>
                                        </li>
                                        <li class="list-group-item d-sm-flex justify-content-between align-items-center">
                                            <span class="mb-0"><i class="bi bi-calendar fa-fw me-2"></i>체크인:</span>
                                            <span class="h6 fw-normal mb-0">${checkin}</span>
                                        </li>
                                        <li class="list-group-item d-sm-flex justify-content-between align-items-center">
                                            <span class="mb-0"><i class="bi bi-calendar fa-fw me-2"></i>체크아웃:</span>
                                            <span class="h6 fw-normal mb-0">${checkout}</span>
                                        </li>
                                        <li class="list-group-item d-sm-flex justify-content-between align-items-center">
                                            <span class="mb-0"><i class="bi bi-people fa-fw me-2"></i>인원:</span>
                                            <span class="h6 fw-normal mb-0">${capacity}</span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
    
                            <!-- Button -->
                            <div class="d-sm-flex justify-content-sm-end d-grid">
                                <!-- Share button with dropdown -->
                                <div class="dropdown me-sm-2 mb-2 mb-sm-0">
                                    <a href="#" class="btn btn-light mb-0 w-100" role="button" id="dropdownShare" data-bs-toggle="dropdown" aria-expanded="false">
                                        <i class="bi bi-share me-2"></i>Share
                                    </a>
                                    <!-- dropdown button -->
                                    <ul class="dropdown-menu dropdown-menu-end min-w-auto shadow rounded" aria-labelledby="dropdownShare">
                                        <li><a  class="dropdown-item" href="#"><i class="fab fa-twitter-square me-2"></i>Twitter</a></li>
                                        <li><a class="dropdown-item" href="#"><i class="fab fa-facebook-square me-2"></i>Facebook</a></li>
                                        <li><a class="dropdown-item" href="#"><i class="fab fa-linkedin me-2"></i>LinkedIn</a></li>
                                        <li><a class="dropdown-item" href="#"><i class="fas fa-copy me-2"></i>Copy link</a></li>
                                    </ul>
                                </div>
                                <!-- Download button -->
                                <a href="/index.do" class="btn btn-primary mb-0"><i class="bi bi-file-pdf me-2"></i>메인 홈페이지</a>
                            </div>
                        </div>
                    </div>
    
                </div>
            </div>
        </div>
    </section>
    <!-- =======================
    Main content START -->
    
    </main>
    <!-- **************** MAIN CONTENT END **************** -->
    
    
    
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
	
	<!-- ThemeFunctions -->
	<script src="/js/functions.js"></script>
</body>
</html>