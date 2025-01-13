	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Customer_Review Page</title>

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
	<link rel="stylesheet" type="text/css" href="/vendor/overlay-scrollbar/css/overlayscrollbars.min.css">
	<link rel="stylesheet" type="text/css" href="/vendor/choices/css/choices.min.css">

	<!-- Theme CSS -->
	<link rel="stylesheet" type="text/css" href="/css/style.css">
	<style>
	.adjust-right{
	position: relative;
	left: 10px;}
	</style>
</head>

<body>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!-- **************** MAIN CONTENT START **************** -->
<main>
<section class="pt-3">
	<div class="container">
		<div class="row">

			<!-- Sidebar START -->
			<div class="col-lg-4 col-xl-3">
				<!-- Responsive offcanvas body START -->
				<div class="offcanvas-lg offcanvas-end" tabindex="-1" id="offcanvasSidebar" >
					<!-- Offcanvas header -->
					<div class="offcanvas-header justify-content-end pb-2">
						<button type="button" class="btn-close" data-bs-dismiss="offcanvas" data-bs-target="#offcanvasSidebar" aria-label="Close"></button>
					</div>

					<!-- Offcanvas body -->
					<div class="offcanvas-body p-3 p-lg-0">
						<div class="card bg-light w-100">

							<!-- Edit profile button -->
							<div class="position-absolute top-0 end-0 p-3">
								<a href="profile.do" class="text-primary-hover" data-bs-toggle="tooltip" data-bs-title="Edit profile">
									<i class="bi bi-pencil-square"></i>
								</a>
							</div>

							<!-- Card body START -->
							<div class="card-body p-3">
								<!-- Avatar and content -->
								<div class="text-center mb-3">
									<!-- Avatar -->
									<div class="avatar avatar-xl mb-2">
										<img class="avatar-img rounded-circle border border-2 border-white" src="/images/avatar/01-1.jpg" alt="">
									</div>
									<h6 class="mb-0"></h6>
									<a href="#" class="text-reset text-primary-hover small"> </a>
									<hr>
								</div>

								<!-- Sidebar menu item START -->
								<ul class="nav nav-pills-primary-soft flex-column">
									<li class="nav-item">
										<a class="nav-link" href="/customer/profile.do"><i class="bi bi-person fa-fw me-2"></i>My Profile</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" href="/customer/mybookings.do"><i class="bi bi-ticket-perforated fa-fw me-2"></i>My Bookings</a>
									</li>
									<li class="nav-item">
										<a class="nav-link active" href="/review/reviews"><i class="bi bi-pencil fa-fw me-2"></i>My Reviews</a>
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

				<!-- Page content START -->
	
			
			<!-- Title -->
			<div class="row">
				
					<h1 class="h3 mb-0">Reviews</h1>
					
				
			</div>

			
		
			<!-- Reviews START -->
			<div class="vstack gap-4 mt-5">
				
				<hr class="m-0"> <!-- Divider -->
			<c:forEach items="${reviews}" var="review">
							<!-- Card body START -->
							<div class="card-body vstack gap-3">
								<!-- Listing item START -->
								<div class="card border p-2">
									<div class="row g-4">
										<!-- Card img -->
										<div class="col-md-3 col-lg-2">
											<img src="/images/hanoks/${review.hanok_imgName}"
												class="card-img rounded-2" alt="Card image">
										</div>

										<!-- Card body -->
										<div class="col-md-9 col-lg-10">
											<div
												class="card-body position-relative d-flex flex-column p-0 h-100">

												

												 <!-- Flex container -->
        <div class="col-md-9 col-lg-10">
    <div class="card-body position-relative d-flex flex-column p-0 h-100">
        <!-- Flex container -->
        <div class="row">
            <!-- 왼쪽 섹션 -->
            <div class="col-4 d-flex flex-column">
                <h5 class="mb-1">${review.hanok_name}</h5>
                <p class="mb-0"><span class="text-body fw-light">예약번호</span> ${review.reservations_id}</p>
            </div>

            <!-- 오른쪽 섹션 -->
            <div class="col-8 d-flex flex-column">
                <!-- 별점 -->
                <ul class="list-inline mb-2">
                    <li class="list-inline-item me-0">
                        <i class="fas fa-star ${review.rating >= 1 ? 'text-warning' : 'text-muted'}"></i>
                    </li>
                    <li class="list-inline-item me-0">
                        <i class="fas fa-star ${review.rating >= 2 ? 'text-warning' : 'text-muted'}"></i>
                    </li>
                    <li class="list-inline-item me-0">
                        <i class="fas fa-star ${review.rating >= 3 ? 'text-warning' : 'text-muted'}"></i>
                    </li>
                    <li class="list-inline-item me-0">
                        <i class="fas fa-star ${review.rating >= 4 ? 'text-warning' : 'text-muted'}"></i>
                    </li>
                    <li class="list-inline-item me-0">
                        <i class="fas fa-star ${review.rating >= 5 ? 'text-warning' : 'text-muted'}"></i>
                    </li>
                </ul>
                <!-- 리뷰 날짜 -->
                <fmt:formatDate value="${review.review_date}" pattern="yyyy-MM-dd" var="formattedDate"/>
                <p class="mb-2">Reviewed on ${formattedDate}</p>
                <!-- 리뷰 내용 -->
                <p>${review.review_content}</p>
            </div>
        </div>
    </div>
</div>

											</div>
										</div>
									</div>
								</div>
								<!-- Listing item END -->

							</div>
							</c:forEach>
				

				

				
			</div>	
			<!-- Reviews END -->

		
			</div>
			<!-- Main content END -->

		</div>
	</div>
</section>	
	
	
	</main>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>	
<!-- **************** MAIN CONTENT END **************** -->
<!-- Back to top -->
<div class="back-top"></div>

<!-- Bootstrap JS -->
<script src="/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

<!-- Vendor -->
<script src="/vendor/overlay-scrollbar/js/overlayscrollbars.min.js"></script>
<script src="/vendor/choices/js/choices.min.js"></script>

<!-- ThemeFunctions -->
<script src="/js/functions.js"></script>

</body>
</html>