<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html l>
<head>
	<title>My Bookings</title>

	<!-- Meta Tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="author" content="Webestica.com">
	<meta name="description" content="Booking - Multipurpose Online Booking Theme">

	
	<!-- Favicon -->
	<link rel="shortcut icon" href="/images/favicon.ico">

	<!-- Google Font -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;700&family=Poppins:wght@400;500;700&display=swap">

	<!-- Plugins CSS -->
	<link rel="stylesheet" type="text/css" href="/vendor/font-awesome/css/all.min.css">
	<link rel="stylesheet" type="text/css" href="/vendor/bootstrap-icons/bootstrap-icons.css">
	<link rel="stylesheet" type="text/css" href="/vendor/aos/aos.css">
	<link rel="stylesheet" type="text/css" href="/vendor/flatpickr/css/flatpickr.min.css">
	<link rel="stylesheet" type="text/css" href="/vendor/choices/css/choices.min.css">

	<!-- Theme CSS -->
	<link rel="stylesheet" type="text/css" href="/css/style.css">

</head>

<body class="dashboard">

<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!-- **************** MAIN CONTENT START **************** -->
<main>
	
<!-- =======================
Content START -->
<section class="pt-3">
	<div class="container">
		<div class="row">

			<!-- Sidebar START -->
			<div class="col-lg-4 col-xl-3">
				<!-- Responsive offcanvas body START -->
				<div class="offcanvas-lg offcanvas-end" tabindex="-1" id="offcanvasSidebar" >
					<!-- Offcanvas header -->
					<div class="offcanvas-header justify-content-end pb-2">
						<button  type="button" class="btn-close" data-bs-dismiss="offcanvas" data-bs-target="#offcanvasSidebar" aria-label="Close"></button>
					</div>

					<!-- Offcanvas body -->
					<div class="offcanvas-body p-3 p-lg-0">
						<div class="card bg-light w-100">

							<!-- Edit profile button -->
							<div class="position-absolute top-0 end-0 p-3">
								<a href="#" class="text-primary-hover" data-bs-toggle="tooltip" data-bs-title="Edit profile">
									<i class="bi bi-pencil-square"></i>
								</a>
							</div>

							<!-- Card body START -->
							<div class="card-body p-3">
								<!-- Avatar and content -->
								<div class="text-center mb-3">
									<!-- Avatar -->
									<div class="avatar avatar-xl mb-2">
										<img class="avatar-img rounded-circle border border-2 border-white" src="/images/avatar/01.jpg" alt="">
									</div>
									<h6 class="mb-0"></h6>
									<a href="#" class="text-reset text-primary-hover small" value="${vo.customer_name}"></a>
									<hr>
								</div>

										<!-- Sidebar menu item START -->
                                        <ul class="nav nav-pills-primary-soft flex-column">
                                            <li class="nav-item">
                                                <a class="nav-link" href="profile.do"><i class="bi bi-person fa-fw me-2"></i>My Profile</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link active" href="mybookings.do"><i class="bi bi-ticket-perforated fa-fw me-2"></i>My Bookings</a>
                                            </li>
                        
                                            <li class="nav-item">
                                                <a class="nav-link text-danger bg-danger-soft-hover" href="/customer/logout.do"><i class="fas fa-sign-out-alt fa-fw me-2"></i>Sign Out</a>
                                            </li>
                                        </ul>
                                        <!-- Sidebar menu item END -->
							</div>
							<!-- Card body END -->
						</div>
					</div>
				</div>	
				<!-- Responsive offcanvas body END -->	
			</div>
			<!-- Sidebar END -->

			<!-- Main content START -->
			<div class="col-lg-8 col-xl-9">

				<!-- Offcanvas menu button -->
				<div class="d-grid mb-0 d-lg-none w-100">
					<button class="btn btn-primary mb-4" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasSidebar" aria-controls="offcanvasSidebar">
						<i class="fas fa-sliders-h"></i> Menu
					</button>
				</div>

				<!-- Booking START -->
				<div class="card border bg-transparent">
					<!-- Card header -->
					<div class="card-header bg-transparent border-bottom">
						<h4 class="card-header-title">My Bookings</h4>
					</div>

					<!-- Card body START -->
					<div class="card-body vstack gap-4">
						
						

						<!-- bookinglist item START -->
						<div class="card shadow p-2">
							<div class="row g-0">
								<!-- Card img -->
								<div class="col-md-3">
									<img src="/images/category/hotel/4by3/10.jpg" class="card-img rounded-2" alt="Card image">
								</div>
	
								<!-- Card body -->
								<div class="col-md-9">
									<div class="card-body py-md-2 d-flex flex-column h-100">
	
										<!-- Rating and buttons -->
										<div class="d-flex justify-content-between align-items-center">
											
	
										</div>
	
										<!-- Title -->
										<!--주소랑 호텔이름-->
										<!-- 내용은 정보 받아서 입력 되는 형식으로  -->
										<h5 class="card-title mb-1"><a href="hotel-detail.html">Pride moon Village Resort & Spa</a></h5>
										<small><i class="bi bi-geo-alt me-2"></i>31J W Spark Street, California - 24578</small>
										
										<!-- Price and Button -->
										<div class="d-sm-flex justify-content-sm-between align-items-center mt-3 mt-md-auto">
											<!-- Button -->
											<div class="d-flex align-items-center">
												<h5 class="fw-bold mb-0 me-1">$980</h5>
												<span class="mb-0 me-2">/day</span>
											</div>
											<!-- Price -->
											<div class="mt-3 mt-sm-0">
											<!-- 결제정보 페이지링크 해야함 -->
												<a href="#" class="btn btn-sm btn-dark w-100 mb-0">Payment Information</a>    
											</div>                  
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- bookinglist item END -->

						
					</div>
					<!-- Card body END -->
				</div>
				<!-- Wishlist END -->

			</div>
			<!-- Main content END -->
		</div>
	</div>
</section>
<!-- =======================
Content END -->

</main>
<!-- **************** MAIN CONTENT END **************** -->


<!-- Back to top -->
<div class="back-top"></div>

<!-- Bootstrap JS -->
<script src="/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

<!-- Vendors -->
<script src="/vendor/aos/aos.js"></script>
<script src="/vendor/flatpickr/js/flatpickr.min.js"></script>
<script src="/vendor/choices/js/choices.min.js"></script>

<!-- ThemeFunctions -->
<script src="/js/functions.js"></script>

</body>
</html>