<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<title> Check My Booking </title>

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

	<!-- Theme CSS -->
	<link rel="stylesheet" type="text/css" href="/css/style.css">
<style>
.fixed-image {
    width: 400px;  /* 너비 고정 */
    height: 200px; /* 높이 고정 */
    object-fit: cover; /* 비율 유지하면서 크기 맞춤 */
}

.adjust-right {
    position: relative;
    left: 10px; /* 원하는 만큼 조정 */
}

.move-left {
    position: relative;
    left: -70px; /* 원하는 거리 */
}
</style>
</head>

<body class="dashboard">


<%@ include file="/WEB-INF/views/include/header.jsp" %>

<!-- **************** MAIN CONTENT START **************** -->
<main>
	
<!-- =======================
Content START -->
<section class="pt-3">
	<div class="container">
		<div class="row g-2 g-lg-4">

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
										<img class="avatar-img rounded-circle border border-2 border-white" src="/images/avatar/01-1.jpg" alt="">
									</div>
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
										<a class="nav-link" href="/review/reviews"><i class="bi bi-pencil fa-fw me-2"></i>My Reviews</a>
									</li>
									<li class="nav-item">
										<a class="nav-link text-danger bg-danger-soft-hover" href="#"><i class="fas fa-sign-out-alt fa-fw me-2"></i>Sign Out</a>
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
			<div class="col-lg-8 col-xl-9 ps-xl-5">

				<!-- Offcanvas menu button -->
				<div class="d-grid mb-0 d-lg-none w-100">
					<button class="btn btn-primary mb-4" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasSidebar" aria-controls="offcanvasSidebar">
						<i class="fas fa-sliders-h"></i> Menu
					</button>
				</div>

				<div class="card border bg-transparent">
					<!-- Card header -->
					<div class="card-header bg-transparent border-bottom">
						<h4 class="card-header-title">My Bookings</h4>
					</div>

					<!-- Card body START -->
					<div class="card-body p-0">

						<!-- Tabs -->
						<ul class="nav nav-tabs nav-bottom-line nav-responsive nav-justified">
							<li class="nav-item"> 
								<a class="nav-link mb-0 active" data-bs-toggle="tab" href="#tab-1"><i class="bi bi-briefcase-fill fa-fw me-1"></i>Booking List</a> 
							</li>
						</ul>
		
						<!-- Tabs content START -->
						<div class="tab-content p-2 p-sm-4" id="nav-tabContent">

							<!-- Tab content item START -->
							<div class="tab-pane fade show active" id="tab-1">
                <!-- Card item START -->
               
					<div class="card shadow p-2">
						<div class="row g-0">
						<c:forEach items="${reservations}" var="reservation">
								<h6 class="fs-7" style="margin-left: 10px;">Reservation No. ${reservation.reservations_id}</h6>
						<div class="d-flex align-items-center">
						<div class="col-md-7 adjust-right">
								<img src="/images/hanoks/${reservation.hanok_imgName}" class="card-img rounded-2 fixed-image" alt="Card image" style="width: 70%;">
									
							</div>
							<div>
						<h5 class="card-title mb-1 move-left" style="margin-left: 10px; margin-right: 10px; width: fit-content;"><a href="#">${reservation.hanok_name}</a></h5>
						<p class="small mb-1 text-end fs-6 move-left" style="margin-left: 10px; margin-right: 10px; width: fit-content;"><i class="bi bi-house-door me-2"></i>${reservation.room_name}</p>
							</div></div><!-- Information START -->
							<div class="row g-3">
							    <!-- Item: Check-in -->
							    <div class="col-lg-6">
							        <div class="bg-light py-3 px-4 rounded-3 text-center">
							            <h6 class="fw-light small mb-2">Check-in</h6>
							            <h5 class="mb-2">
							            <fmt:formatDate value="${reservation.checkin}" pattern="yyyy-MM-dd"/></h5>
							            <small><i class="bi bi-alarm me-1"></i><fmt:formatDate value="${reservation.checkin}" pattern="HH:mm a" /></small>
							        </div>
							    </div>

								<!-- Item -->
								 <div class="col-lg-6">
							       	 <div class="bg-light py-3 px-4 rounded-3 text-center">
							            <h6 class="fw-light small mb-2">Check-out</h6>
							            <h5 class="mb-2"><fmt:formatDate value="${reservation.checkout}" pattern="yyyy-MM-dd"/></h5>
							            <small><i class="bi bi-alarm me-1"></i><fmt:formatDate value="${reservation.checkout}" pattern="HH:mm a"/></small>
							        </div>
							    </div>

								<!-- Item -->
								<div class="col-lg-4">
									
								</div>
							</div>
								 <c:if test="${!status.last}">
								 <div style="display: flex; gap: 10px; justify-content: flex-end;">
 					<a href="/${reservation.reservations_id}/bookingdetail.do" class="btn btn-primary mb-0" style="font-size: 13px; padding: 10px 20px; color: black; background-color: white; border: 1px solid black;">View Details</a>
							<c:if test="${!reservation.hasReview}">
            <a href="/review/review.do?reservation_id=${reservation.reservations_id}" 
               class="btn btn-primary mb-0" 
               style="font-size: 13px; padding: 10px 20px; color: black; background-color: white; border: 1px solid black;">
                Create Review
            </a>
        </c:if>
</div>
	               					 <hr style="margin-top: 20px; margin-bottom: 20px;">
	           					 </c:if>
							<!-- Information END -->
							</c:forEach>
							
							
								</div>
								<!-- Card item END -->
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

<!-- ThemeFunctions -->
<script src="/js/functions.js"></script>
<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>