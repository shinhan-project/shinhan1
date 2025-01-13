<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>My Hanoks Listings</title>

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

	<!-- **************** MAIN CONTENT START **************** -->
<main>

		<!-- =======================
Menu item START -->



	
	<!-- 사장님헤더 -->
	<c:if test="${!empty ownerloginInfo}">
		<!-- Header START -->
		<header class="navbar-light header-sticky">
			<!-- Logo Nav START -->
			<nav class="navbar navbar-expand-xl">
				<div class="container">
					<!-- Logo START -->
					<a class="navbar-brand" href="/owner/owner_dash.do"> <img
						class="light-mode-item navbar-brand-item"
						src="/images/gojeuneoklogo.png" alt="logo">

					</a>
					<!-- Logo END -->

					<!-- Responsive navbar toggler -->
					<button class="navbar-toggler ms-auto mx-3 me-md-0 p-0 p-sm-2"
						type="button" data-bs-toggle="collapse"
						data-bs-target="#navbarCollapse" aria-controls="navbarCollapse"
						aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-animation"> <span></span> <span></span>
							<span></span>
						</span>
					</button>
					<!-- Main navbar START -->
					<div class="navbar-collapse collapse" id="navbarCollapse">
						<ul class="navbar-nav navbar-nav-scroll">

							<!-- Nav item Contact -->
							<li class="nav-item"><a class="nav-link"
								href="/owner/owner_dash.do">Myhanoks</a></li>
						</ul>
					</div>
					<!-- Main navbar END -->

					<!-- Profile and Notification START -->
					<ul
						class="nav flex-row align-items-center list-unstyled ms-xl-auto">



						<!-- Profile dropdown START -->
						<li class="nav-item ms-3 dropdown">
							<!-- Avatar --> <a class="avatar avatar-xs p-0" href="#"
							id="profileDropdown" role="button" data-bs-auto-close="outside"
							data-bs-display="static" data-bs-toggle="dropdown"
							aria-expanded="false"> <img class="avatar-img rounded-circle"
								src="/images/avatar/01-1.jpg" alt="avatar">
						</a> <!-- Profile dropdown START -->
							<ul
								class="dropdown-menu dropdown-animation dropdown-menu-end shadow pt-3"
								aria-labelledby="profileDropdown">
								<!-- Profile info -->
								<li class="px-3 mb-3">
									<div class="d-flex align-items-center">
										<!-- Avatar -->
										<div class="avatar me-3">
											<img class="avatar-img rounded-circle shadow"
												src="/images/avatar/01-1.jpg" alt="avatar">
										</div>
										<div>

											<a class="h6 mt-2 mt-sm-0" href="#">${ownerloginInfo.owner_name}</a>
											<p class="small m-0">${ownerloginInfo.owner_email}</p>


										</div>
									</div>
								</li>

								<!-- Links -->
								<li>
									<hr class="dropdown-divider">
								</li>

								<li><a class="dropdown-item bg-danger-soft-hover"
									href="/owner/owner_logout.do"><i
										class="bi bi-power fa-fw me-2"></i>Logout</a></li>
								<li>
									<hr class="dropdown-divider">
								</li>

							</ul> <!-- Profile dropdown END -->
						</li>
						<!-- Profile dropdown END -->


					</ul>
					<!-- Profile and Notification START -->

				</div>
			</nav>
			<!-- Logo Nav END -->
		</header>
		<!-- Header END -->
	

	<!-- **************** MAIN CONTENT START **************** -->
	<main>

		<!-- =======================
Menu item START -->
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
						<a href="add-listing.html"
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

									<li class="nav-item"><a class="nav-link"
										href="/owner/owner_dash.do"><i
											class="bi bi-house-door fa-fw me-1"></i>Dashboard</a></li>
									<!-- Review 목록 페이지 -->
									<li class="nav-item"><a class="nav-link"
										href="/review/owner/${ownerloginInfo.owner_id}"><i class="bi bi-star fa-fw me-1"></i>Reviews</a></li>


									<li class="nav-item"> <a class="nav-link active" href="/owner/owner_listings.do"><i class="bi bi-journals fa-fw me-1"></i>Listings</a> </li>

									<li><a class="nav-link" href="/owner/owner_profile.do"><i
											class="bi bi-gear fa-fw me-1"></i>profile</a></li>

								</ul>
							</div>
						</div>
					</div>
					<!-- Nav links END -->
				</div>
			</div>
			</c:if>
		</section>
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
							<i class="bi bi-journals fa-fw me-1"></i>Listings
						</h1>
					</div>
				</div>
				<!-- Title END -->


				<!-- Listing table START -->
				<div class="row">
					<div class="col-12">

						<div class="card border">
							<!-- Card header -->
							<div class="card-header border-bottom">
								<h5 class="card-header-title">
									My Listings
								</h5>
							</div>
<!-- 여기부터 나의 한옥 리스트 보이게 하는거! 여기부터 반복문이 되어야 함! -->

	<c:forEach var="listings" items="${listings}">
							<!-- Card body START -->
							<div class="card-body vstack gap-3">
								<!-- Listing item START -->
								<div class="card border p-2">
									<div class="row g-4">
										<!-- Card img -->
										<div class="col-md-3 col-lg-2">
											<img src="/images/hanoks/${listings.hanok_imgName }"
												class="card-img rounded-2" alt="Card image">
										</div>

										<!-- Card body -->
										<div class="col-md-9 col-lg-10">
											<div
												class="card-body position-relative d-flex flex-column p-0 h-100">

												

												<!-- Title -->
												<h5 class="card-title mb-0 me-5">
													<a href="/owner/owner_rooms.do?hanok_id=${listings.hanok_id}">${listings.hanok_name}</a>
												</h5>
												<small><i class="bi bi-geo-alt me-2"></i>${listings.hanok_address}</small>

												<!-- 가능 서비스 -->
												<div
													class="d-sm-flex justify-content-sm-between align-items-center mt-3 mt-md-auto">
													<!-- Button -->
													<div class="d-flex align-items-center">
														
														<span class="mb-0 me-2">${listings.hanok_serviceETC}</span>
													</div>
													
													
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- Listing item END -->

							</div>
							</c:forEach>
							<!-- Card body END -->
						</div>
					</div>
				</div>
				<!-- Listing table END -->
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
	<script src="/vendor/apexcharts/js/apexcharts.min.js"></script>
	<script src="/vendor/choices/js/choices.min.js"></script>

	<!-- ThemeFunctions -->
	<script src="/js/functions.js"></script>

</body>
</html>