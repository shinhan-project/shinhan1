<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<title>customer main page</title>

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
	<link rel="stylesheet" type="text/css" href="/vendor/tiny-slider/tiny-slider.css">
	<link rel="stylesheet" type="text/css" href="/vendor/glightbox/css/glightbox.css">
	<link rel="stylesheet" type="text/css" href="/vendor/flatpickr/css/flatpickr.min.css">
	<link rel="stylesheet" type="text/css" href="/vendor/choices/css/choices.min.css">

	<!-- Theme CSS -->
	<link rel="stylesheet" type="text/css" href="/css/style.css">

</head>

<body>


<%@ include file="/WEB-INF/views/include/header.jsp" %>

<!-- **************** MAIN CONTENT START **************** -->
<main>
	
<!-- =======================
Main Banner START -->
<section class="py-0">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-11 mx-auto">
				<!-- Slider START -->
				<div class="tiny-slider arrow-round arrow-blur arrow-hover rounded-3 overflow-hidden">
					<div class="tiny-slider-inner" data-gutter="0" data-arrow="true" data-dots="false" data-items="1">
						<!-- Card item START -->
						<div class="card overflow-hidden h-400px h-sm-600px rounded-0" style="background-image:url(/images/category/hotel/06.jpg); background-position: center left; background-size: cover;">
							<!-- Background dark overlay -->
							<div class="bg-overlay bg-dark opacity-3"></div>
							<!-- Card image overlay -->
							<div class="card-img-overlay d-flex align-items-center"> 
								<div class="container">
									<div class="row">
										<div class="col-11 col-lg-7">
											<h6 class="text-white fw-normal mb-0">💖 Fall in love with the City</h6>
											<!-- Title -->
											<h1 class="text-white display-6">Modern Luxury In Manhattan</h1>
											<a href="#" class="btn btn-primary mb-0">Reserve Today</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- Card item END -->

						<!-- Card item START -->
						<div class="card overflow-hidden h-400px h-sm-600px bg-parallax text-center rounded-0"  data-jarallax-video="https://www.youtube.com/watch?v=j56YlCXuPFU">
							<!-- Background dark overlay -->
							<div class="bg-overlay bg-dark opacity-3"></div>
							<!-- Card image overlay -->
							<div class="card-img-overlay d-flex align-items-center"> 
								<div class="container w-100 my-auto">
									<div class="row justify-content-center">
										<div class="col-11 col-lg-8">	
											<!-- Title -->
											<h1 class="text-white">Taking luxury hospitality to new heights</h1>
											<a href="#" class="btn btn-dark mb-0">Take Me There</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- Card item END -->
					</div>
				</div>
				<!-- Slider END -->
			</div>
		</div>
	</div>
</section>


<!-- =======================
Main Banner END -->

	<section class="pb-0 mb-1">
	<!-- Search START -->
		<div class="row justify-content-center align-items-center" style="height : 30vh;">
			<div class="col-xl-10 position-relative mt-n3 mt-xl-n9 ">
				<!-- Title -->
				<h6 class="d-none d-xl-block mb-3">Check Availability</h6>

				<!-- Booking from START -->
				<form class="card shadow rounded-3 position-relative p-4 pe-md-5 pb-5 pb-md-4">
					<div class="row g-4 align-items-center">
						<!-- Location -->
						<div class="col-lg-4">
							<div class="form-control-border form-control-transparent form-fs-md d-flex">
								<!-- Icon -->
								<i class="bi bi-geo-alt fs-3 me-2 mt-2"></i>
								<!-- Select input -->
								<div class="flex-grow-1">
									<label class="form-label">Location</label>
									<select class="form-select js-choice" data-search-enabled="true">
										<option value="">Select location</option>
										<option>San Jacinto, USA</option>
										<option>North Dakota, Canada</option>
										<option>West Virginia, Paris</option>
									</select>
								</div>
							</div>
						</div>

						<!-- Check in -->
						<div class="col-lg-4">
							<div class="d-flex">
								<!-- Icon -->
								<i class="bi bi-calendar fs-3 me-2 mt-2"></i>
								<!-- Date input -->
								<div class="form-control-border form-control-transparent form-fs-md">
									<label class="form-label">Check in - out</label>
									<input type="text" class="form-control flatpickr" data-mode="range" placeholder="Select date" value="19 Sep to 28 Sep">
								</div>
							</div>
						</div>

						<!-- Guest -->
						<div class="col-lg-4">
							<div class="form-control-border form-control-transparent form-fs-md d-flex">
								<!-- Icon -->
								<i class="bi bi-person fs-3 me-2 mt-2"></i>
								<!-- Dropdown input -->
								<div class="w-100">
									<label class="form-label">Guests & rooms</label>
									<div class="dropdown guest-selector me-2">
										<input type="text" class="form-guest-selector form-control selection-result" value="2 Guests 1 Room" data-bs-auto-close="outside" data-bs-toggle="dropdown">
									
										<!-- dropdown items -->
										<ul class="dropdown-menu guest-selector-dropdown">
											<!-- Adult -->
											<li class="d-flex justify-content-between">
												<div>
													<h6 class="mb-0">Adults</h6>
													<small>Ages 13 or above</small>
												</div>

												<div class="hstack gap-1 align-items-center">
													<button type="button" class="btn btn-link adult-remove p-0 mb-0"><i class="bi bi-dash-circle fs-5 fa-fw"></i></button>
													<h6 class="guest-selector-count mb-0 adults">2</h6>
													<button type="button" class="btn btn-link adult-add p-0 mb-0"><i class="bi bi-plus-circle fs-5 fa-fw"></i></button>
												</div>
											</li>

											<!-- Divider -->
											<li class="dropdown-divider"></li>

											<!-- Child -->
											<li class="d-flex justify-content-between">
												<div>
													<h6 class="mb-0">Child</h6>
													<small>Ages 13 below</small>
												</div>

												<div class="hstack gap-1 align-items-center">
													<button type="button" class="btn btn-link child-remove p-0 mb-0" ><i class="bi bi-dash-circle fs-5 fa-fw"></i></button>
													<h6 class="guest-selector-count mb-0 child">0</h6>
													<button type="button" class="btn btn-link child-add p-0 mb-0" ><i class="bi bi-plus-circle fs-5 fa-fw"></i></button>
												</div>
											</li>

											<!-- Divider -->
											<li class="dropdown-divider"></li>

											<!-- Rooms -->
											<li class="d-flex justify-content-between">
												<div>
													<h6 class="mb-0">Rooms</h6>
													<small>Max room 8</small>
												</div>

												<div class="hstack gap-1 align-items-center">
													<button type="button" class="btn btn-link room-remove p-0 mb-0" ><i class="bi bi-dash-circle fs-5 fa-fw"></i></button>
													<h6 class="guest-selector-count mb-0 rooms">1</h6>
													<button type="button" class="btn btn-link room-add p-0 mb-0" ><i class="bi bi-plus-circle fs-5 fa-fw"></i></button>
												</div>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- Button -->
					<div class="btn-position-md-middle">
						<a class="icon-lg btn btn-round btn-primary mb-0" href="#"><i class="bi bi-search fa-fw"></i></a>
					</div>
				</form>
				<!-- Booking from END -->
			</div>
		</div>
	</section>

<!-- =======================
Special offer START -->
<section class="pt-0">
	<div class="container">
		<!-- Title -->
		<div class="row mb-4">
			<div class="col-12 text-center">
				<h3 class="mb-0">Special Offers</h3>
			</div>
		</div>

		<!-- Slider START -->
		<div class="tiny-slider arrow-round arrow-blur arrow-hover">
			<div class="tiny-slider-inner mb-8" data-autoplay="true" data-arrow="true" data-edge="2" data-dots="false" data-items-xl="3" data-items-lg="3" data-items-md="2" data-items-sm="1">
				
				<!-- Offer card START -->
				<div>
					<div class="card">
						<img src="/images/offer/06.jpg" class="card-img" alt="">
						<!-- Card body -->
						<div class="position-absolute top-100 start-50 translate-middle w-100">
							<div class="card-body text-center bg-mode shadow rounded mx-4 p-3">
								<h6 class="card-title mb-1"><a href="#">Spa Package Offer</a></h6>
								<small>Valid through Dec 2022</small>
								<div class="mt-2"><a href="#" class="btn btn-sm btn-dark mb-0">View Offer</a></div>
							</div>
						</div>
					</div>
				</div>
				<!-- Offer card END -->

				<!-- Offer card START -->
				<div>
					<div class="card">
						<img src="/images/offer/07.jpg" class="card-img" alt="">
						<!-- Card body -->
						<div class="position-absolute top-100 start-50 translate-middle w-100">
							<div class="card-body text-center bg-mode shadow rounded mx-4 p-3">
								<h6 class="card-title mb-1"><a href="#">Elevate Your Stay</a></h6>
								<small>Valid through Feb 2023</small>
								<div class="mt-2"><a href="#" class="btn btn-sm btn-dark mb-0">View Offer</a></div>
							</div>
						</div>
					</div>
				</div>
				<!-- Offer card END -->

				<!-- Offer card START -->
				<div>
					<div class="card">
						<img src="/images/offer/08.jpg" class="card-img" alt="">
						<!-- Card body -->
						<div class="position-absolute top-100 start-50 translate-middle w-100">
							<div class="card-body text-center bg-mode shadow rounded mx-4 p-3">
								<h6 class="card-title mb-1"><a href="#">Pass Holder Package</a></h6>
								<small>Valid through Feb 2023</small>
								<div class="mt-2"><a href="#" class="btn btn-sm btn-dark mb-0">View Offer</a></div>
							</div>
						</div>
					</div>
				</div>
				<!-- Offer card END -->

				<!-- Offer card START -->
				<div>
					<div class="card">
						<img src="/images/offer/05.jpg" class="card-img" alt="">
						<!-- Card body -->
						<div class="position-absolute top-100 start-50 translate-middle w-100">
							<div class="card-body text-center bg-mode shadow rounded mx-4 p-3">
								<h6 class="card-title mb-1"><a href="#">2023 Golf Tournament Package</a></h6>
								<small>Valid through Jan 2021</small>
								<div class="mt-2"><a href="#" class="btn btn-sm btn-dark mb-0">View Offer</a></div>
							</div>
						</div>
					</div>
				</div>
				<!-- Offer card END -->
			</div>	
		</div>
		<!-- Slider END -->
	</div>
</section>
<!-- =======================
Special offer END -->




<!-- =======================
Gallery START -->
<section>
	<div class="container-fluid">
		<!-- Title -->
		<div class="row mb-md-4">
			<div class="col-12 mx-auto text-center mb-4">
				<h2 class="mb-0">Our Hotel Precious Moments</h2>
			</div>
		</div>

			<!-- Slider START -->
			<div class="tiny-slider arrow-round arrow-blur arrow-hover rounded-3 overflow-hidden">
				<div class="tiny-slider-inner d-flex align-items-end" data-autoplay="true" data-edge="2" data-arrow="true" data-dots="false" data-items="6" data-items-lg="4" data-items-sm="2">
					<!-- Slider item -->
					<div>
						<a data-glightbox="" data-gallery="gallery" href="/images/category/hotel/gallery/01.jpg">
							<div class="card card-element-hover card-overlay-hover overflow-hidden">
								<!-- Image -->
								<img src="/images/category/hotel/gallery/01.jpg" class="rounded-3" alt="">
								<!-- Full screen button -->
								<div class="hover-element w-100 h-100">
									<i class="bi bi-fullscreen fs-6 text-white position-absolute top-50 start-50 translate-middle bg-dark rounded-1 p-2 lh-1"></i>
								</div>
							</div>
						</a>
					</div>

					<!-- Slider item -->
					<div>
						<a data-glightbox="" data-gallery="gallery" href="/images/category/hotel/gallery/02.jpg">
							<div class="card card-element-hover card-overlay-hover overflow-hidden">
								<!-- Image -->
								<img src="/images/category/hotel/gallery/02.jpg" class="rounded-3" alt="">
								<!-- Full screen button -->
								<div class="hover-element w-100 h-100">
									<i class="bi bi-fullscreen fs-6 text-white position-absolute top-50 start-50 translate-middle bg-dark rounded-1 p-2 lh-1"></i>
								</div>
							</div>
						</a>
					</div>

					<!-- Slider item -->
					<div>
						<a data-glightbox="" data-gallery="gallery" href="/images/category/hotel/gallery/03.jpg">
							<div class="card card-element-hover card-overlay-hover overflow-hidden">
								<!-- Image -->
								<img src="/images/category/hotel/gallery/03.jpg" class="rounded-3" alt="">
								<!-- Full screen button -->
								<div class="hover-element w-100 h-100">
									<i class="bi bi-fullscreen fs-6 text-white position-absolute top-50 start-50 translate-middle bg-dark rounded-1 p-2 lh-1"></i>
								</div>
							</div>
						</a>
					</div>

					<!-- Slider item -->
					<div>
						<a data-glightbox="" data-gallery="gallery" href="/images/category/hotel/gallery/05.jpg">
							<div class="card card-element-hover card-overlay-hover overflow-hidden">
								<!-- Image -->
								<img src="/images/category/hotel/gallery/05.jpg" class="rounded-3" alt="">
								<!-- Full screen button -->
								<div class="hover-element w-100 h-100">
									<i class="bi bi-fullscreen fs-6 text-white position-absolute top-50 start-50 translate-middle bg-dark rounded-1 p-2 lh-1"></i>
								</div>
							</div>
						</a>
					</div>

					<!-- Slider item -->
					<div>
						<a data-glightbox="" data-gallery="gallery" href="/images/category/hotel/gallery/08.jpg">
							<div class="card card-element-hover card-overlay-hover overflow-hidden">
								<!-- Image -->
								<img src="/images/category/hotel/gallery/08.jpg" class="rounded-3" alt="">
								<!-- Full screen button -->
								<div class="hover-element w-100 h-100">
									<i class="bi bi-fullscreen fs-6 text-white position-absolute top-50 start-50 translate-middle bg-dark rounded-1 p-2 lh-1"></i>
								</div>
							</div>
						</a>
					</div>

					<!-- Slider item -->
					<div>
						<a data-glightbox="" data-gallery="gallery" href="https://www.youtube.com/embed/tXHviS-4ygo">
							<div class="card card-element-hover card-overlay-hover overflow-hidden">
								<!-- Image -->
								<img src="/images/category/hotel/gallery/04.jpg" class="rounded-3" alt="">
								<!-- Full screen button -->
								<div class="hover-element w-100 h-100">
									<span class="btn text-danger btn-round btn-white position-absolute top-50 start-50 translate-middle mb-0">
										<i class="fas fa-play"></i>
									</span>
								</div>
							</div>
						</a>
					</div>

					<!-- Slider item -->
					<div>
						<a data-glightbox="" data-gallery="gallery" href="/images/category/hotel/gallery/06.jpg">
							<div class="card card-element-hover card-overlay-hover overflow-hidden">
								<!-- Image -->
								<img src="/images/category/hotel/gallery/06.jpg" class="rounded-3" alt="">
								<!-- Full screen button -->
								<div class="hover-element w-100 h-100">
									<i class="bi bi-fullscreen fs-6 text-white position-absolute top-50 start-50 translate-middle bg-dark rounded-1 p-2 lh-1"></i>
								</div>
							</div>
						</a>
					</div>

					<!-- Slider item -->
					<div>
						<a data-glightbox="" data-gallery="gallery" href="/images/category/hotel/gallery/07.jpg">
							<div class="card card-element-hover card-overlay-hover overflow-hidden">
								<!-- Image -->
								<img src="/images/category/hotel/gallery/07.jpg" class="rounded-3" alt="">
								<!-- Full screen button -->
								<div class="hover-element w-100 h-100">
									<i class="bi bi-fullscreen fs-6 text-white position-absolute top-50 start-50 translate-middle bg-dark rounded-1 p-2 lh-1"></i>
								</div>
							</div>
						</a>
					</div>
				</div>
			</div>			
		<!-- Slider END	 -->
	</div>
</section>
<!-- =======================
Gallery END -->

</main>
<!-- **************** MAIN CONTENT END **************** -->



<!-- Modal START -->
<div class="modal fade" id="map360" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<!-- Title -->
			<div class="modal-header">
				<h5 class="modal-title" id="map360label">Hotel 360 View</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			</div>
			<!-- Body -->
			<div class="modal-body p-3">
				<iframe src="https://www.google.com/maps/embed?pb=!4v1664190302197!6m8!1m7!1sgWjBbRwH2wMmQTbvyZwkGw!2m2!1d51.49712857925994!2d-0.1593322776188391!3f348.1837813715552!4f17.07463868756892!5f0.8485845663286693" width="100%" height="400" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
			</div>
		</div>
	</div>
</div>
<!-- Modal END -->

<!-- Back to top -->
<div class="back-top"></div>

<!-- Bootstrap JS -->
<script src="/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

<!-- Vendors -->
<script src="/vendor/tiny-slider/tiny-slider.js"></script>
<script src="/vendor/purecounterjs/dist/purecounter_vanilla.js"></script>
<script src="/vendor/glightbox/js/glightbox.js"></script>
<script src="/vendor/flatpickr/js/flatpickr.min.js"></script>
<script src="/vendor/choices/js/choices.min.js"></script>
<script src="/vendor/jarallax/jarallax.min.js"></script>
<script src="/vendor/jarallax/jarallax-video.min.js"></script>

<!-- ThemeFunctions -->
<script src="/js/functions.js"></script>

</body>
</html>