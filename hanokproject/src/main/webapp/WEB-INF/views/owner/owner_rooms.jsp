<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Owner My Rooms</title>

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

<%@ include file="/WEB-INF/views/include/owner_header.jsp" %>	

		<!-- **************** MAIN CONTENT START **************** -->
		<main>
	<c:if test="${!empty ownerloginInfo}">
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

									<li class="nav-item"><a class="nav-link "
										href="/owner/owner_dash.do"><i
											class="bi bi-house-door fa-fw me-1"></i>Dashboard</a></li>
									<!-- Review 목록 페이지 -->
									<li class="nav-item"><a class="nav-link "
										href="/review/owner/${ownerloginInfo.owner_id}"><i class="bi bi-star fa-fw me-1"></i>Reviews</a></li>
									
									<li class="nav-item"> <a class="nav-link active" href="/owner/owner_listings.do"><i class="bi bi-journals fa-fw me-1"></i>Listings</a> </li>
									<li class="nav-item"> <a class="nav-link" href="owner_authorization.do"><i class="bi bi-bookmark-heart fa-fw me-1"></i>Authorization lists</a> </li>
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
					<div class="col-md-12">
						<a data-glightbox data-gallery="gallery"
							href="/images/gallery/14.jpg">
							<div class="card card-grid-lg card-element-hover card-overlay-hover overflow-hidden"
								style="background-image: url(/images/hanoks/${vo.hanok_imgName}); background-position: center left; background-size: cover;">
								<!-- Card hover element -->
								<div class="hover-element position-absolute w-100 h-100">
									<i
										class="bi bi-fullscreen fs-6 text-white position-absolute top-50 start-50 translate-middle bg-dark rounded-1 p-2 lh-1"></i>
								</div>
							</div>
						</a>
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
									<div class="d-flex flex-wrap gap-3">
										
										
						
										<!-- 샤워 0 -->
										<c:if test="${vo.hanok_service0 == true }">
										<div class="icon-lg bg-light h5 rounded-2"
											data-bs-toggle="tooltip" data-bs-placement="top"
											title="bath">
											<i class="fa-solid fa-bath"></i>
										</div>
										</c:if>
										<!-- 애완동물1 -->
										<c:if test="${vo.hanok_service1 == true }">
										<div class="icon-lg bg-light h5 rounded-2"
											data-bs-toggle="tooltip" data-bs-placement="top"
											title="Pet Friendly">
											<i class="fa-solid fa-dog"></i>
										</div>
										</c:if>
											<!-- TV 2-->
										<c:if test="${vo.hanok_service2 == true }">
										<div class="icon-lg bg-light h5 rounded-2"
											data-bs-toggle="tooltip" data-bs-placement="top"
											title="OTT">
											<i class="fa-solid fa-tv"></i>
										</div>
										</c:if>
										<!-- 와이파이 3 -->
										<c:if test= "${vo.hanok_service3 == true }">
									<div class="hstack gap-3 mb-3">
										<div class="icon-lg bg-light h5 rounded-2"
											data-bs-toggle="tooltip" data-bs-placement="top"
											title="Free wifi">
											<i class="fa-solid fa-wifi"></i>
										</div></c:if>
										
										<!-- 고기4 -->
										<c:if test="${vo.hanok_service4 == true }">
										<div class="icon-lg bg-light h5 rounded-2"
											data-bs-toggle="tooltip" data-bs-placement="top"
											title="BBQ">
											<i class="fa-solid fa-fire"></i>
										</div>
										</c:if>
								
										<!-- 주방 5-->
										<c:if test="${vo.hanok_service5 == true }">
										<div class="icon-lg bg-light h5 rounded-2"
											data-bs-toggle="tooltip" data-bs-placement="top"
											title="Kitchen">
											<i class="fa-solid fa-utensils"></i>
										</div>
										</c:if>
										<!-- 수영장 6 -->
										<c:if test= "${vo.hanok_service6 == true }">
										<div class="icon-lg bg-light h5 rounded-2"
											data-bs-toggle="tooltip" data-bs-placement="top"
											title="Swimming Pool">
											<i class="fa-solid fa-swimming-pool"></i>
										</div></c:if>
											
											<!-- 주차7 -->
											<c:if test="${vo.hanok_service7 == true }">
										<div class="icon-lg bg-light h5 rounded-2"
											data-bs-toggle="tooltip" data-bs-placement="top"
											title="parking">
											<i class="fa-solid fa-parking"></i>
										</div>
										</c:if>
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
											class="bi bi-patch-check-fill text-success me-2">${vo.hanok_serviceETC}</i></li>
										
										
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
														<div><img src="/images/rooms/${roomList.room_imgName}" alt="Card image"></div>

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
										<span>HANOK NAME</span>
										<h4 class="card-title mb-0">${vo.hanok_name }</h4>
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



<%@ include file="/WEB-INF/views/include/footer.jsp" %>
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