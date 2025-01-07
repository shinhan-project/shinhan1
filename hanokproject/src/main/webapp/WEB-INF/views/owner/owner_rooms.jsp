<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Booking - Multipurpose Online Booking Theme</title>

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
<link
	href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;700&family=Poppins:wght@300;400;500;600;700&display=swap"
	rel="stylesheet">

<!-- Plugins CSS -->
<link rel="stylesheet" type="text/css"
	href="/vendor/font-awesome/css/all.min.css">
<link rel="stylesheet" type="text/css"
	href="/vendor/bootstrap-icons/bootstrap-icons.css">
<link rel="stylesheet" type="text/css"
	href="/vendor/glightbox/css/glightbox.css">
<link rel="stylesheet" type="text/css"
	href="/vendor/flatpickr/css/flatpickr.min.css">
<link rel="stylesheet" type="text/css"
	href="/vendor/choices/css/choices.min.css">
<link rel="stylesheet" type="text/css"
	href="/vendor/tiny-slider/tiny-slider.css">

<!-- Theme CSS -->
<link rel="stylesheet" type="text/css" href="/css/style.css">

</head>

<body>
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

										<li class="nav-item"><a class="nav-link active"
											href="/owner/owner_dash.do"><i
												class="bi bi-house-door fa-fw me-1"></i>Dashboard</a></li>
										<!-- Review 목록 페이지 -->
										<li class="nav-item"><a class="nav-link"
											href="agent-reviews.html"><i
												class="bi bi-star fa-fw me-1"></i>Reviews</a></li>

										<li class="nav-item"><a class="nav-link"
											href="/owner/owner_listings.do"><i
												class="bi bi-journals fa-fw me-1"></i>Listings</a></li>
										<li><a class="nav-link" href="/owner/owner_profile.do"><i
												class="bi bi-gear fa-fw me-1"></i>profile</a></li>

									</ul>
								</div>
							</div>
						</div>
						<!-- Nav links END -->
					</div>
				</div>

			</section>
	</c:if>

	<!-- **************** MAIN CONTENT START **************** -->
	<main>




		<!-- ======================= Main Title START -->
		<!-- 이부분도 클릭한 한옥의 정보가 그대로 들어오게 하기! -->
		<section class="py-0 pt-sm-5">
			<div class="container position-relative">
				<!-- Title and button START -->
				<div class="row mb-3">
					<div class="col-12">
						<!-- Meta -->
						<div class="d-lg-flex justify-content-lg-between mb-1">
							<!-- Title -->
							<div class="mb-2 mb-lg-0">
							<!-- hanok_name 넣어주기 -->
								<h1 class="fs-2">${vo.hanok_name }</h1>
								<!-- Location -->
								<p class="fw-bold mb-0">
								<!-- 여기에는 hanok_address -->
									<i class="bi bi-geo-alt me-2"></i>${vo.hanok_address}
								</p>
							</div>

						</div>
					</div>
				</div>
				<!-- Title and button END -->


			</div>
		</section>
		<!-- =======================Main Title END -->

		<!-- =======================Image gallery START 윤경님께 이미지 받는 법 물어보고 넣기-->
		<section class="card-grid pt-0">
			<div class="container">
				<div class="row g-2">
					<!-- Image -->
					<div class="col-md-6">
						<a data-glightbox data-gallery="gallery"
							href="/images/gallery/14.jpg">
							<div class="card card-grid-lg card-element-hover card-overlay-hover overflow-hidden"
								style="background-image: url(/images/gallery/14.jpg); background-position: center left; background-size: cover;">
								<!-- Card hover element -->
								<div class="hover-element position-absolute w-100 h-100">
									<i
										class="bi bi-fullscreen fs-6 text-white position-absolute top-50 start-50 translate-middle bg-dark rounded-1 p-2 lh-1"></i>
								</div>
							</div>
						</a>
					</div>

					<div class="col-md-6">
						<!-- Card item START -->
						<div class="row g-2">
							<!-- Image -->
							<div class="col-12">
								<a data-glightbox data-gallery="gallery"
									href="/images/gallery/13.jpg">
									<div
										class="card card-grid-sm card-element-hover card-overlay-hover overflow-hidden"
										style="background-image: url(/images/gallery/13.jpg); background-position: center left; background-size: cover;">
										<!-- Card hover element -->
										<div class="hover-element position-absolute w-100 h-100">
											<i
												class="bi bi-fullscreen fs-6 text-white position-absolute top-50 start-50 translate-middle bg-dark rounded-1 p-2 lh-1"></i>
										</div>
									</div>
								</a>
							</div>

							<!-- Image -->
							<div class="col-md-6">
								<a data-glightbox data-gallery="gallery"
									href="/images/gallery/12.jpg">
									<div
										class="card card-grid-sm card-element-hover card-overlay-hover overflow-hidden"
										style="background-image: url(/images/gallery/12.jpg); background-position: center left; background-size: cover;">
										<!-- Card hover element -->
										<div class="hover-element position-absolute w-100 h-100">
											<i
												class="bi bi-fullscreen fs-6 text-white position-absolute top-50 start-50 translate-middle bg-dark rounded-1 p-2 lh-1"></i>
										</div>
									</div>
								</a>
							</div>

							<!-- Images -->
							<div class="col-md-6">
								<div class="card card-grid-sm overflow-hidden"
									style="background-image: url(/images/gallery/11.jpg); background-position: center left; background-size: cover;">
									<!-- Background overlay -->
									<div class="bg-overlay bg-dark opacity-7"></div>

									<!-- Popup Images -->
									<a data-glightbox="" data-gallery="gallery"
										href="/images/gallery/11.jpg" class="stretched-link z-index-9"></a>
									<a data-glightbox="" data-gallery="gallery"
										href="/images/gallery/15.jpg"></a> <a data-glightbox=""
										data-gallery="gallery" href="/images/gallery/16.jpg"></a>

									<!-- Overlay text -->
									<div class="card-img-overlay d-flex h-100 w-100">
										<h6
											class="card-title m-auto fw-light text-decoration-underline">
											<a href="#" class="text-white">View all</a>
										</h6>
									</div>
								</div>
							</div>
						</div>
						<!-- Card item END -->
					</div>
				</div>
			</div>
		</section>
		<!-- ======================= Image gallery END -->

		<!-- ======================= About hotel START -->
		<section class="pt-0">
			<div class="container" data-sticky-container>

				<div class="row g-4 g-xl-5">
					<!-- Content START -->
					<div class="col-xl-7 order-1">
						<div class="vstack gap-5">

							<!-- About hotel START -->
							<div class="card bg-transparent">
								<!-- Card header -->
								<div class="card-header border-bottom bg-transparent px-0 pt-0">
									<h3 class="mb-0">About This Hotel</h3>
								</div>

								<!-- Card body START -->
								<div class="card-body pt-4 p-0">
									<h5 class="fw-light mb-4">Main Highlights</h5>

									<!-- Highlights Icons -->
									<div class="hstack gap-3 mb-3">
										<div class="icon-lg bg-light h5 rounded-2"
											data-bs-toggle="tooltip" data-bs-placement="top"
											title="Free wifi">
											<i class="fa-solid fa-wifi"></i>
										</div>
										<div class="icon-lg bg-light h5 rounded-2"
											data-bs-toggle="tooltip" data-bs-placement="top"
											title="Swimming Pool">
											<i class="fa-solid fa-swimming-pool"></i>
										</div>
										<div class="icon-lg bg-light h5 rounded-2"
											data-bs-toggle="tooltip" data-bs-placement="top"
											title="Central AC">
											<i class="fa-solid fa-snowflake"></i>
										</div>
										<div class="icon-lg bg-light h5 rounded-2"
											data-bs-toggle="tooltip" data-bs-placement="top"
											title="Free Service">
											<i class="fa-solid fa-concierge-bell"></i>
										</div>
									</div>
									<!-- hanok_description 넣기 -->
									<p class="mb-3">
										${vo.hanok_description }
									</p>
									

									<!-- List 여기에 hanok_service 넣기-->
									<h5 class="fw-light mb-2">Advantages</h5>
									<ul class="list-group list-group-borderless mb-0">
										<li class="list-group-item h6 fw-light d-flex mb-0"><i
											class="bi bi-patch-check-fill text-success me-2"></i>${vo.hanok_serviceETC}</li>
										
										
									</ul>
								</div>
								<!-- Card body END -->
							</div>
							<!-- About hotel START -->

							<!-- Amenities START -->
							<div class="card bg-transparent">
								<!-- Card header -->
								<div class="card-header border-bottom bg-transparent px-0 pt-0">
									<h3 class="card-title mb-0">Amenities</h3>
								</div>

								<!-- Card body START -->
								<div class="card-body pt-4 p-0">
									<div class="row g-4">
										<!-- Activities -->
										<div class="col-sm-6">
											<h6>
												<i class="fa-solid fa-biking me-2"></i>Activities
											</h6>
											<!-- List -->
											<ul class="list-group list-group-borderless mt-2 mb-0">
												<li class="list-group-item pb-0"><i
													class="fa-solid fa-check-circle text-success me-2"></i>Swimming
													pool</li>
												<li class="list-group-item pb-0"><i
													class="fa-solid fa-check-circle text-success me-2"></i>Spa
												</li>
												<li class="list-group-item pb-0"><i
													class="fa-solid fa-check-circle text-success me-2"></i>Kids'
													play area</li>
												<li class="list-group-item pb-0"><i
													class="fa-solid fa-check-circle text-success me-2"></i>Gym
												</li>
											</ul>
										</div>

										<!-- Payment Method -->
										<div class="col-sm-6">
											<h6>
												<i class="fa-solid fa-credit-card me-2"></i>Payment Method
											</h6>
											<!-- List -->
											<ul class="list-group list-group-borderless mt-2 mb-0">
												<li class="list-group-item pb-0"><i
													class="fa-solid fa-check-circle text-success me-2"></i>Credit
													card (Visa, Master card)</li>
												<li class="list-group-item pb-0"><i
													class="fa-solid fa-check-circle text-success me-2"></i>Cash
												</li>
												<li class="list-group-item pb-0"><i
													class="fa-solid fa-check-circle text-success me-2"></i>Debit
													Card</li>
											</ul>
										</div>

										<!-- Services -->
										<div class="col-sm-6">
											<h6>
												<i class="fa-solid fa-concierge-bell me-2"></i>Services
											</h6>
											<!-- List -->
											<ul class="list-group list-group-borderless mt-2 mb-0">
												<li class="list-group-item pb-0"><i
													class="fa-solid fa-check-circle text-success me-2"></i>Dry
													cleaning</li>
												<li class="list-group-item pb-0"><i
													class="fa-solid fa-check-circle text-success me-2"></i>Room
													Service</li>
												<li class="list-group-item pb-0"><i
													class="fa-solid fa-check-circle text-success me-2"></i>Special
													service</li>
												<li class="list-group-item pb-0"><i
													class="fa-solid fa-check-circle text-success me-2"></i>Waiting
													Area</li>
												<li class="list-group-item pb-0"><i
													class="fa-solid fa-check-circle text-success me-2"></i>Secrete
													smoking area</li>
												<li class="list-group-item pb-0"><i
													class="fa-solid fa-check-circle text-success me-2"></i>Concierge
												</li>
												<li class="list-group-item pb-0"><i
													class="fa-solid fa-check-circle text-success me-2"></i>Laundry
													facilities</li>
												<li class="list-group-item pb-0"><i
													class="fa-solid fa-check-circle text-success me-2"></i>Ironing
													Service</li>
												<li class="list-group-item pb-0"><i
													class="fa-solid fa-check-circle text-success me-2"></i>Lift
												</li>
											</ul>
										</div>

										<!-- Safety & Security -->
										<div class="col-sm-6">
											<h6>
												<i class="bi bi-shield-fill-check me-2"></i>Safety &
												Security
											</h6>
											<!-- List -->
											<ul
												class="list-group list-group-borderless mt-2 mb-4 mb-sm-5">
												<li class="list-group-item pb-0"><i
													class="fa-solid fa-check-circle text-success me-2"></i>Doctor
													on Call</li>
											</ul>

											<h6>
												<i class="fa-solid fa-volume-up me-2"></i>Staff Language
											</h6>
											<!-- List -->
											<ul class="list-group list-group-borderless mt-2 mb-0">
												<li class="list-group-item pb-0"><i
													class="fa-solid fa-check-circle text-success me-2"></i>English
												</li>
												<li class="list-group-item pb-0"><i
													class="fa-solid fa-check-circle text-success me-2"></i>Spanish
												</li>
												<li class="list-group-item pb-0"><i
													class="fa-solid fa-check-circle text-success me-2"></i>Hindi
												</li>
											</ul>
										</div>

									</div>
								</div>
								<!-- Card body END -->
							</div>
							<!-- Amenities END -->

							<!-- Room START -->
							<div class="card bg-transparent" id="room-options">
								<!-- Card header -->
								<div class="card-header border-bottom bg-transparent px-0 pt-0">
									<div
										class="d-sm-flex justify-content-sm-between align-items-center">
										<h3 class="mb-2 mb-sm-0">Room Options</h3>


									</div>
								</div>

								<!-- Card body START -->
								<div class="card-body pt-4 p-0">
									<div class="vstack gap-4">
										<!-- 여기부터 반복문으로 표현 -->
										<c:forEach var="roomList" items="${roomList}">

											<!-- Room item START -->
											<div class="card shadow p-3">
												<div class="row g-4">

													<!-- Card img -->
													<div class="col-md-5 position-relative">

														<!-- Slider START -->
														<div
															class="tiny-slider arrow-round arrow-xs arrow-dark overflow-hidden rounded-2">
															<div class="tiny-slider-inner" data-autoplay="true"
																data-arrow="true" data-dots="false" data-items="1">
																<!-- Image item -->
																<div>
																	<img src="/images/category/hotel/4by3/04.jpg"
																		alt="Card image">
																</div>

																<!-- Image item -->
																<div>
																	<img src="/images/category/hotel/4by3/02.jpg"
																		alt="Card image">
																</div>

																<!-- Image item -->
																<div>
																	<img src="/images/category/hotel/4by3/03.jpg"
																		alt="Card image">
																</div>

																<!-- Image item -->
																<div>
																	<img src="/images/category/hotel/4by3/01.jpg"
																		alt="Card image">
																</div>
															</div>
														</div>
														<!-- Slider END -->
													</div>

													<!-- Card body -->
													<div class="col-md-7">
														<div class="card-body d-flex flex-column h-100 p-0">
															<!-- Title -->
															<h5 class="card-title">
																<a href="#">${roomList.room_name}</a>
															</h5>



															<!-- Price -->
															<div
																class="d-sm-flex justify-content-sm-between align-items-center mt-auto">
																<!-- Button -->
																<div class="d-flex align-items-center">
																	<h5 class="fw-bold mb-0 me-1">${roomList.room_price}</h5>
																	<span class="mb-0 me-2">/day</span>

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



							<!-- Hotel Policies START -->
							<div class="card bg-transparent">
								<!-- Card header -->
								<div class="card-header border-bottom bg-transparent px-0 pt-0">
									<h3 class="mb-0">Hotel Policies</h3>
								</div>

								<!-- Card body START -->
								<div class="card-body pt-4 p-0">
									<!-- List -->
									<ul class="list-group list-group-borderless mb-2">
										<li class="list-group-item d-flex"><i
											class="bi bi-check-circle-fill me-2"></i>This is a family
											farmhouse, hence we request you to not indulge.</li>
										<li class="list-group-item d-flex"><i
											class="bi bi-check-circle-fill me-2"></i>Drinking and smoking
											within controlled limits are permitted at the farmhouse but
											please do not create a mess or ruckus at the house.</li>
										<li class="list-group-item d-flex"><i
											class="bi bi-check-circle-fill me-2"></i>Drugs and
											intoxicating illegal products are banned and not to be
											brought to the house or consumed.</li>
										<li class="list-group-item d-flex"><i
											class="bi bi-x-circle-fill me-2"></i>For any update, the
											customer shall pay applicable cancellation/modification
											charges.</li>
									</ul>

									<!-- List -->
									<ul class="list-group list-group-borderless mb-2">
										<li class="list-group-item h6 fw-light d-flex mb-0"><i
											class="bi bi-arrow-right me-2"></i>Check-in: 1:00 pm - 9:00
											pm</li>
										<li class="list-group-item h6 fw-light d-flex mb-0"><i
											class="bi bi-arrow-right me-2"></i>Check out: 11:00 am</li>
										<li class="list-group-item h6 fw-light d-flex mb-0"><i
											class="bi bi-arrow-right me-2"></i>Self-check-in with
											building staff</li>
										<li class="list-group-item h6 fw-light d-flex mb-0"><i
											class="bi bi-arrow-right me-2"></i>No pets</li>
										<li class="list-group-item h6 fw-light d-flex mb-0"><i
											class="bi bi-arrow-right me-2"></i>No parties or events</li>
										<li class="list-group-item h6 fw-light d-flex mb-0"><i
											class="bi bi-arrow-right me-2"></i>Smoking is allowed</li>
									</ul>

									
								</div>
								<!-- Card body END -->
							</div>
							<!-- Hotel Policies START -->
						</div>
					</div>
					<!-- Content END -->

					<!-- Right side content START -->
					<aside class="col-xl-5 order-xl-2">
						<div data-sticky data-margin-top="100" data-sticky-for="1199">
							<!-- Book now START -->
							<div class="card card-body border">

								<!-- Title -->
								<div
									class="d-sm-flex justify-content-sm-between align-items-center mb-3">
									<div>
										<span>Price Start at</span>
										<h4 class="card-title mb-0">$3,500</h4>
									</div>
									<div>
										<h6 class="fw-normal mb-0">1 room per night</h6>
										<small>+ $285 taxes & fees</small>
									</div>
								</div>

								

								<p class="h6 fw-light mb-4">
									<i class="bi bi-arrow-right me-2"></i>return hanok List page
								</p>

								<!-- Button -->
								<div class="d-grid">
									<a href="/owner/owner_listings.do"
										class="btn btn-lg btn-primary-soft mb-0">hanok List</a>
								</div>
							</div>
							<!-- Book now END -->

						</div>
					</aside>
					<!-- Right side content END -->
				</div>
				<!-- Row END -->
			</div>
		</section>
		<!-- =======================
About hotel END -->

	</main>
	<!-- **************** MAIN CONTENT END **************** -->



	<!-- Map modal START -->
	<div class="modal fade" id="mapmodal" tabindex="-1"
		aria-labelledby="mapmodalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered modal-lg">
			<div class="modal-content">
				<!-- Title -->
				<div class="modal-header">
					<h5 class="modal-title" id="mapmodalLabel">View Our Hotel
						Location</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<!-- Map -->
				<div class="modal-body p-0">
					<iframe class="w-100" height="400"
						src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3022.9663095343008!2d-74.00425878428698!3d40.74076684379132!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c259bf5c1654f3%3A0xc80f9cfce5383d5d!2sGoogle!5e0!3m2!1sen!2sin!4v1586000412513!5m2!1sen!2sin"
						style="border: 0;" aria-hidden="false" tabindex="0"></iframe>
				</div>
				<!-- Button -->
				<div class="modal-footer">
					<button type="button" class="btn btn-sm btn-primary mb-0">
						<i class="bi fa-fw bi-pin-map-fill me-2"></i>View In Google Map
					</button>
				</div>
			</div>
		</div>
	</div>
	<!-- Map modal END -->

	<!-- Room modal START -->
	<div class="modal fade" id="roomDetail" tabindex="-1"
		aria-labelledby="roomDetailLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content p-0">

				<!-- Title -->
				<div class="modal-header p-3">
					<h5 class="modal-title mb-0" id="roomDetailLabel">Room detail</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>

				<!-- Modal body -->
				<div class="modal-body p-0">

					<!-- Card START -->
					<div class="card bg-transparent p-3">
						<!-- Slider START -->
						<div
							class="tiny-slider arrow-round arrow-dark overflow-hidden rounded-2">
							<div class="tiny-slider-inner rounded-2 overflow-hidden"
								data-autoplay="true" data-arrow="true" data-dots="false"
								data-items="1">
								<!-- Image item -->
								<div>
									<img src="/images/gallery/16.jpg" class="rounded-2"
										alt="Card image">
								</div>

								<!-- Image item -->
								<div>
									<img src="/images/gallery/15.jpg" class="rounded-2"
										alt="Card image">
								</div>

								<!-- Image item -->
								<div>
									<img src="/images/gallery/13.jpg" class="rounded-2"
										alt="Card image">
								</div>

								<!-- Image item -->
								<div>
									<img src="/images/gallery/12.jpg" class="rounded-2"
										alt="Card image">
								</div>
							</div>
						</div>
						<!-- Slider END -->

						<!-- Card header -->
						<div class="card-header bg-transparent pb-0">
							<h3 class="card-title mb-0">Deluxe Pool View</h3>
						</div>

						<!-- Card body START -->
						<div class="card-body">
							<!-- Content -->
							<p>Club rooms are well furnished with air conditioner, 32
								inch LCD television and a mini bar. They have attached bathroom
								with showerhead and hair dryer and 24 hours supply of hot and
								cold running water. Complimentary wireless internet access is
								available. Additional amenities include bottled water, a safe
								and a desk.</p>

							<div class="row">
								<h5 class="mb-0">Amenities</h5>

								<!-- List -->
								<div class="col-md-6">
									<!-- List -->
									<ul class="list-group list-group-borderless mt-2 mb-0">
										<li class="list-group-item d-flex mb-0"><i
											class="fa-solid fa-check-circle text-success me-2"></i><span
											class="h6 fw-light mb-0">Swimming pool</span></li>
										<li class="list-group-item d-flex mb-0"><i
											class="fa-solid fa-check-circle text-success me-2"></i><span
											class="h6 fw-light mb-0">Spa</span></li>
										<li class="list-group-item d-flex mb-0"><i
											class="fa-solid fa-check-circle text-success me-2"></i><span
											class="h6 fw-light mb-0">Kids play area.</span></li>
										<li class="list-group-item d-flex mb-0"><i
											class="fa-solid fa-check-circle text-success me-2"></i><span
											class="h6 fw-light mb-0">Gym</span></li>
									</ul>
								</div>

								<!-- List -->
								<div class="col-md-6">
									<!-- List -->
									<ul class="list-group list-group-borderless mt-2 mb-0">
										<li class="list-group-item d-flex mb-0"><i
											class="fa-solid fa-check-circle text-success me-2"></i><span
											class="h6 fw-light mb-0">TV</span></li>
										<li class="list-group-item d-flex mb-0"><i
											class="fa-solid fa-check-circle text-success me-2"></i><span
											class="h6 fw-light mb-0">Mirror</span></li>
										<li class="list-group-item d-flex mb-0"><i
											class="fa-solid fa-check-circle text-success me-2"></i><span
											class="h6 fw-light mb-0">AC</span></li>
										<li class="list-group-item d-flex mb-0"><i
											class="fa-solid fa-check-circle text-success me-2"></i><span
											class="h6 fw-light mb-0">Slippers</span></li>
									</ul>
								</div>
							</div>
							<!-- Row END -->
						</div>
						<!-- Card body END -->
					</div>
					<!-- Card END -->
				</div>
			</div>
		</div>
	</div>
	<!-- Room modal END -->

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