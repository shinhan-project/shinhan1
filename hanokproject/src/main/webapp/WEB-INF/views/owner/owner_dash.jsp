<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>

<head>
<title>Owner DashBoard Page</title>

<!-- Meta Tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="author" content="Webestica.com">
<meta name="description"
	content="Booking - Multipurpose Online Booking Theme">


<!-- Favicon -->
<link rel="shortcut icon" href="/images/favicon.ico">

<!-- Google Font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;700&family=Poppins:wght@400;500;700&display=swap">

<!-- Plugins CSS -->
<link rel="stylesheet" type="text/css"
	href="/vendor/font-awesome/css/all.min.css">
<link rel="stylesheet" type="text/css"
	href="/vendor/bootstrap-icons/bootstrap-icons.css">
<link rel="stylesheet" type="text/css"
	href="/vendor/apexcharts/css/apexcharts.css">
<link rel="stylesheet" type="text/css"
	href="/vendor/choices/css/choices.min.css">

<!-- Theme CSS -->
<link rel="stylesheet" type="text/css" href="/css/style.css">

</head>

<body>
<%@ include file="/WEB-INF/views/include/owner_header.jsp" %>	



	<!-- **************** MAIN CONTENT START **************** -->
	
	<main>
<c:if test="${!empty ownerloginInfo}">
		<!-- ======================= Menu item START -->
		<section class="pt-4">
			<div class="container">
				<div class="card rounded-3 border p-3 pb-2">
					<!-- Avatar and info START -->
					<div class="d-sm-flex align-items-center">
						<div class="avatar avatar-xl mb-2 mb-sm-0">
							<img class="avatar-img rounded-circle"
								src="/images/avatar/01-1.jpg" alt="">
						</div>
						<h4 class="mb-2 mb-sm-0 ms-sm-3">
							<span class="fw-light">Hi!</span> ${ownerloginInfo.owner_name}
						</h4>
						<a href="/owner/enrollConfirm.do"
							class="btn btn-sm btn-primary-soft mb-0 ms-auto flex-shrink-0"><i
							class="bi bi-plus-lg fa-fw me-2"></i>Add New Listing</a>
					</div>
					<!-- Avatar and info START -->

					<!-- Responsive navbar toggler -->
					<button class="btn btn-primary w-100 d-block d-xl-none mt-2"
						type="button" data-bs-toggle="offcanvas"
						data-bs-target="#dashboardMenu" aria-controls="dashboardMenu">
						<i class="bi bi-list"></i> Dashboard Menu
					</button>

					<!-- Nav links START -->
					<div class="offcanvas-xl offcanvas-end mt-xl-3" tabindex="-1"
						id="dashboardMenu">
						<div class="offcanvas-header border-bottom p-3">
							<h5 class="offcanvas-title">Menu</h5>
							<button type="button" class="btn-close"
								data-bs-dismiss="offcanvas" data-bs-target="#dashboardMenu"
								aria-label="Close"></button>
						</div>
						<!-- Offcanvas body -->
						<div class="offcanvas-body p-3 p-xl-0">
							<!-- Nav item -->
							<div class="navbar navbar-expand-xl">
								<ul class="navbar-nav navbar-offcanvas-menu">

									<li class="nav-item"><a class="nav-link active"
										href="/owner/owner_dash.do"><i
											class="bi bi-house-door fa-fw me-1"></i>Dashboard</a></li>
									<!-- Review 목록 페이지 -->
									<li class="nav-item"><a class="nav-link "
										href="/review/owner"><i class="bi bi-star fa-fw me-1"></i>Reviews</a></li>
									
									<li class="nav-item"> <a class="nav-link" href="/owner/owner_listings.do"><i class="bi bi-journals fa-fw me-1"></i>Listings</a> </li>
									<li class="nav-item"> <a class="nav-link" href="/owner/owner_authorization.do"><i class="bi bi-bookmark-heart fa-fw me-1"></i>Authorization lists</a> </li>
									<li><a class="nav-link" href="/owner/owner_profile.do"><i class="bi bi-gear fa-fw me-1"></i>profile</a></li>

								</ul>
							</div>
						</div>
					</div>
					<!-- Nav links END -->
				</div>
			</div>
			
		</section>
		</c:if>
		<!-- =======================
Menu item END -->

		<!-- =======================
Content START -->
		<section class="pt-0">
			<div class="container vstack gap-4">
				<!-- Title START -->
				<div class="row">
					<div class="col-12">
						<h1 class="fs-4 mb-0">
							<i class="bi bi-house-door fa-fw me-1"></i>Dashboard
						</h1>
					</div>
				</div>
				<!-- Title END -->

				<!-- Counter START -->
				<div class="row g-6">
					<!-- Counter item -->
					<div class="col-sm-6 col-xl-4">
						<div class="card card-body border">
							<div class="d-flex align-items-center">
								<!-- Icon -->
								<div class="icon-xl bg-success rounded-3 text-white">
									<i class="bi bi-journals"></i>
								</div>
								<!-- Content -->
								<div class="ms-3">

									<!-- 여기에 count(사장님이 가지고 있는 방의 예약 수) -->
									<h4>${reservationsCount}</h4>

									<span>총 예약 수</span>
								</div>
							</div>
						</div>
					</div>

					<!-- Counter item -->
					<div class="col-sm-6 col-xl-4">
						<div class="card card-body border">
							<div class="d-flex align-items-center">
								<!-- Icon -->
								<div class="icon-xl bg-info rounded-3 text-white">
									<i class="bi bi-graph-up-arrow"></i>
								</div>
								<!-- Content -->
								<div class="ms-3">
									<!-- 사장님 수익 -->
									<h4>₩ ${reservationsEarning}</h4>
									<span>총 수익</span>
								</div>
							</div>
						</div>
					</div>



					<!-- Counter item -->
					<div class="col-sm-6 col-xl-4">
						<div class="card card-body border">
							<div class="d-flex align-items-center">
								<!-- Icon -->
								<div class="icon-xl bg-primary rounded-3 text-white">
									<i class="bi bi-star"></i>
								</div>
								<!-- Content -->
								<div class="ms-3">
									<h4>${reservationsReviewCount}</h4>
									<!-- 리뷰 갯수 -->
									<span>총 리뷰수</span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Counter END -->


				<!-- Booking table START -->
				<div class="row">
					<div class="col-12">
						<div class="card border rounded-3">
							<!-- Card header START -->
							<div class="card-header border-bottom">
								<div
									class="d-sm-flex justify-content-between align-items-center">
									<h5 class="mb-2 mb-sm-0">Upcoming Bookings</h5>
								
								</div>
							</div>
							<!-- Card header END -->

							<!-- Card body START -->
							<div class="card-body">

								<!-- Search and select END -->

								<!-- Hotel room list START -->
								<div class="table-responsive border-0">
									<table
										class="table align-middle p-4 mb-0 table-hover table-shrink">
										<!-- Table head -->
										<thead class="table-light">

											<tr>
												
												<th scope="col" class="border-0">reservation_id</th>
												<th scope="col" class="border-0">reservation_name</th>
												<th scope="col" class="border-0">hanok_name</th>
												<th scope="col" class="border-0">room_name</th>
												<th scope="col" class="border-0">check in-out</th>
												<th scope="col" class="border-0">pay type</th>
												<th scope="col" class="border-0">price</th>
												
											</tr>
										</thead>




										<!-- Table body START -->
										<tbody class="border-top-0">
											<!-- Table item -->
											<c:forEach var="reservation" items="${reservations}">
												<tr>
													
													<td>
														<h6 class="mb-0">
														${reservation.reservations_id}</a>
														</h6>
													</td>
													<td>${reservation.reservation_name}</td>
													<td>${reservation.hanok_name}</td>
													<td>${reservation.room_name}</td>
													<td> <fmt:formatDate value="${reservation.checkin}" pattern="yyyy-MM-dd" /> ~ <fmt:formatDate value="${reservation.checkout}" pattern="yyyy-MM-dd" /></td>
													<td>
														<div class="badge text-bg-success">${reservation.pay_type}</div>
													</td>
													<td>
														<div class="badge text-bg-success">${reservation.reservation_price}
															won</div>
													</td>
													
												</tr>
											</c:forEach>
										</tbody>

										<!-- Table body END -->
									</table>
								</div>
								<!-- Hotel room list END -->
							</div>
							<!-- Card body END -->

						
						</div>
					</div>
				</div>
				<!-- Booking table END -->


			</div>
			<!-- Card body END -->

		</section>
		<!-- =======================
Content END -->

	</main>
	<!-- **************** MAIN CONTENT END **************** -->
<%@ include file="/WEB-INF/views/include/footer.jsp" %>

	<!-- Back to top -->
	<div class="back-top"></div>

	<!-- Bootstrap JS -->
	<script src="/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

	<!-- Vendors -->
	<script src="/vendor/apexcharts/js/apexcharts.min.js"></script>
	<script src="/vendor/choices/js/choices.min.js"></script>

	<!-- ThemeFunctions -->
	<script src="/js/functions.js"></script>

</body>
</html>