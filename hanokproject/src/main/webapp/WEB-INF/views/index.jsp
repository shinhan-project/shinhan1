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
	<style>
	.tiny-slider-inner .card-img {
    width: 100%;
    height: 250px; /* 모든 이미지를 같은 높이로 설정 */
    object-fit: cover; /* 비율 유지하면서 크기 맞추기 */
}
	</style>

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
						<div class="card overflow-hidden h-400px h-sm-600px rounded-0" style="background-image:url(/images/category/hotel/06_1.jpg); background-position: center left; background-size: cover;">
							<!-- Background dark overlay -->
							<div class="bg-overlay bg-dark opacity-3"></div>
							<!-- Card image overlay -->
							<div class="card-img-overlay d-flex align-items-center"> 
								<div class="container">
									<div class="row">
										<div class="col-11 col-lg-7">
											<h6 class="text-white fw-normal mb-0">💖 Fall in love with the City</h6>
											<!-- Title -->
											<h1 class="text-white display-6">Journey on an Exclusive Hanok Experience</h1>
											
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- Card item END -->

						<!-- Card item START -->
						<div class="card overflow-hidden h-400px h-sm-600px bg-parallax text-center rounded-0"  data-jarallax-video="https://youtu.be/OO4g3UG4mtQ?si=T7jlNvjCHQHj2Ox5">
							<!-- Background dark overlay -->
							<div class="bg-overlay bg-dark opacity-3"></div>
							<!-- Card image overlay -->
							<div class="card-img-overlay d-flex align-items-center"> 
								<div class="container w-100 my-auto">
									<div class="row justify-content-center">
										<div class="col-11 col-lg-8">	
											<!-- Title -->
											<h1 class="text-white">Taking luxury hospitality to new heights</h1>
											
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

 <!-- =======================
Search START -->
<section class="py-3 py-sm-0">
	<div class="container">
		<!-- Offcanvas button for search -->
		<button class="btn btn-primary d-sm-none w-100 mb-0" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasEditsearch" aria-controls="offcanvasEditsearch"><i class="bi bi-pencil-square me-2"></i>Edit Search</button>

<<<<<<< HEAD
   <!-- Search with offcanvas START -->
		<div class="offcanvas-sm offcanvas-top" tabindex="-1" id="offcanvasEditsearch" aria-labelledby="offcanvasEditsearchLabel">
			<div class="offcanvas-header">
				<h5 class="offcanvas-title" id="offcanvasEditsearchLabel">Edit search</h5>
				<button type="button" class="btn-close" data-bs-dismiss="offcanvas" data-bs-target="#offcanvasEditsearch" aria-label="Close"></button>
			</div>
			<div class="offcanvas-body p-2">
				<div class="bg-light p-4 rounded w-100">
					<form action="/hanok/hanok_list.do" method="GET">
						<div class="row g-4">
							<!-- Location -->
							<div class="col-md-6 col-lg-4">
								<div class="form-size-lg form-fs-md">
									<!-- input -->
									<label class="form-label">Location</label>
									<input type="text" name="location" class="form-guest-selector form-control form-control-lg selection-result" placeholder="지역을 입력하시오." value="${param.location}">
								</div>
							</div>
	
							<!-- Check in -->
							<div class="col-md-6 col-lg-3">
								<!-- Date input -->
								<div class="form-fs-md">
									<label class="form-label">Check in</label>
									<input type="date" name="checkInDate" id="checkIn" class="form-control form-control-lg flatpickr" data-mode="range" placeholder="날짜를 고르시오." value="${param.checkInDate}" data-date-format="Y M d">
									<label class="form-label">Check out</label>
									<input type="date" name="checkOut" id="checkOut" class="form-control form-control-lg flatpickr" data-mode="range" placeholder="날짜를 고르시오." value="${param.checkOutDate}" data-date-format="d M Y">
								</div>
							</div>
	
							<!-- Guest -->
							<div class="col-md-6 col-lg-3">
								<div class="form-fs-md">
									<!-- Dropdown input -->
									<div class="w-100">
										<label class="form-label">Guests</label>
										<div class="dropdown guest-selector me-2">
											<input type="text" name="capacity" class="form-guest-selector form-control form-control-lg selection-result" placeholder="인원 수를 입력하시오." id="dropdownguest" data-bs-auto-close="outside" data-bs-toggle="dropdown" value="${param.capacity}">
										</div>
									</div>
								</div>
							</div>
	
							<!-- Button -->
							<div class="col-md-6 col-lg-2 mt-md-auto">
								<button class="btn btn-lg btn-primary w-100 mb-0" type="submit"><i class="bi bi-search fa-fw"></i>Search</a>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		<!-- Search with offcanvas END -->
  </div>
=======
		<!-- Search with offcanvas START -->
		<div class="offcanvas-sm offcanvas-top" tabindex="-1" id="offcanvasEditsearch" aria-labelledby="offcanvasEditsearchLabel">
			<div class="offcanvas-header">
				<h5 class="offcanvas-title" id="offcanvasEditsearchLabel">Edit search</h5>
				<button type="button" class="btn-close" data-bs-dismiss="offcanvas" data-bs-target="#offcanvasEditsearch" aria-label="Close"></button>
			</div>
			<div class="offcanvas-body p-2">
				<div class="bg-light p-4 rounded w-100">
					<form action="/hanok/hanok_list.do" method="GET">
						<div class="row g-4">
							<!-- Location -->
							<div class="col-md-6 col-lg-4">
								<div class="form-size-lg form-fs-md">
									<!-- input -->
									<label class="form-label">Location</label>
									<input type="text" name="location" class="form-guest-selector form-control form-control-lg selection-result" placeholder="지역을 입력하시오." value="${param.location}" required>
								</div>
							</div>
	
							<!-- Check in -->
							<div class="col-md-6 col-lg-3">
								<!-- Date input -->
								<div class="form-fs-md">
									<label class="form-label">Check in</label>
									<input type="date" name="checkIn" id="checkIn" class="form-guest-selector form-control form-control-lg selection-result" data-mode="range" placeholder="날짜를 고르시오." value="${param.checkIn}" required>
									<label class="form-label">Check out</label>
									<input type="date" name="checkOut" id="checkOut" class="form-guest-selector form-control form-control-lg selection-result" data-mode="range" placeholder="날짜를 고르시오." value="${param.checkOut}" required>
								</div>
							</div>
	
							<!-- Guest -->
							<div class="col-md-6 col-lg-3">
								<div class="form-fs-md">
									<!-- Dropdown input -->
									<div class="w-100">
										<label class="form-label">Guests</label>
										<div class="dropdown guest-selector me-2">
											<input type="text" name="capacity" class="form-guest-selector form-control form-control-lg selection-result" placeholder="인원 수를 입력하시오." id="dropdownguest" data-bs-auto-close="outside" data-bs-toggle="dropdown" value="${param.capacity}" required>
										</div>
									</div>
								</div>
							</div>
	
							<!-- Button -->
							<div class="col-md-6 col-lg-2 mt-md-auto">
								<button class="btn btn-lg btn-primary w-100 mb-0" type="submit"><i class="bi bi-search fa-fw"></i>Search</a>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		<!-- Search with offcanvas END -->
	</div>
>>>>>>> branch 'main' of https://github.com/shinhan-project/shinhan1.git
</section>
<!-- =======================
Search END -->

<!-- =======================
Recommand ffer START -->
<section class="pt-0">
	<div class="container">
		<!-- Title -->
		<div class="row mb-4">
			<div class="col-12 text-center">
				<h3 class="mb-0">Recommand hanoks</h3>
			</div>
		</div>

		<!-- Slider START -->
		<div class="tiny-slider arrow-round arrow-blur arrow-hover">
			<div class="tiny-slider-inner mb-8" data-autoplay="true" data-arrow="true" data-edge="2" data-dots="false" data-items-xl="3" data-items-lg="3" data-items-md="2" data-items-sm="1">
				
				<!-- Offer card START -->
				
				<c:forEach var="hanoks" items="${hanoks }">
				<div>
					<div class="card">
						<img src="/images/hanoks/${hanoks.hanok_imgName}" class="card-img" alt="">
						<!-- Card body -->
						<div class="position-absolute top-100 start-50 translate-middle w-100">
							<div class="card-body text-center bg-mode shadow rounded mx-4 p-3">
								<h6 class="card-title mb-1"><a href="#">${hanoks.hanok_name}</a></h6>
								
								<div class="mt-2"><a href="/hanok/hanok_detail.do?hanok_id=${hanoks.hanok_id}" class="btn btn-sm btn-dark mb-0">View Offer</a></div>
							</div>
						</div>
					</div>
					
				</div>
				</c:forEach>
				
				
				<!-- Offer card END -->
<!-- 
				Offer card START
				<div>
					<div class="card">
						<img src="/images/offer/07.jpg" class="card-img" alt="">
						Card body
						<div class="position-absolute top-100 start-50 translate-middle w-100">
							<div class="card-body text-center bg-mode shadow rounded mx-4 p-3">
								<h6 class="card-title mb-1"><a href="#">Elevate Your Stay</a></h6>
								<small>Valid through Feb 2023</small>
								<div class="mt-2"><a href="#" class="btn btn-sm btn-dark mb-0">View Offer</a></div>
							</div>
						</div>
					</div>
				</div>
				Offer card END

				Offer card START
				<div>
					<div class="card">
						<img src="/images/offer/08.jpg" class="card-img" alt="">
						Card body
						<div class="position-absolute top-100 start-50 translate-middle w-100">
							<div class="card-body text-center bg-mode shadow rounded mx-4 p-3">
								<h6 class="card-title mb-1"><a href="#">Pass Holder Package</a></h6>
								<small>Valid through Feb 2023</small>
								<div class="mt-2"><a href="#" class="btn btn-sm btn-dark mb-0">View Offer</a></div>
							</div>
						</div>
					</div>
				</div>
				Offer card END

				Offer card START
				<div>
					<div class="card">
						<img src="/images/offer/05.jpg" class="card-img" alt="">
						Card body
						<div class="position-absolute top-100 start-50 translate-middle w-100">
							<div class="card-body text-center bg-mode shadow rounded mx-4 p-3">
								<h6 class="card-title mb-1"><a href="#">2023 Golf Tournament Package</a></h6>
								<small>Valid through Jan 2021</small>
								<div class="mt-2"><a href="#" class="btn btn-sm btn-dark mb-0">View Offer</a></div>
							</div>
						</div>
					</div>
				</div>
				Offer card END -->
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
				<h2 class="mb-0">Our Hanok Precious Moments</h2>
			</div>
		</div>

			<!-- Slider START -->
			<div class="tiny-slider arrow-round arrow-blur arrow-hover rounded-3 overflow-hidden">
				<div class="tiny-slider-inner d-flex align-items-end" data-autoplay="true" data-edge="2" data-arrow="true" data-dots="false" data-items="6" data-items-lg="4" data-items-sm="2">
					<!-- Slider item -->
					<div>
						<a data-glightbox="" data-gallery="gallery" href="/images/category/hotel/gallery/01_1.jpg">
							<div class="card card-element-hover card-overlay-hover overflow-hidden">
								<!-- Image -->
								<img src="/images/category/hotel/gallery/01_1.jpg" class="rounded-3" alt="">
								<!-- Full screen button -->
								<div class="hover-element w-100 h-100">
									<i class="bi bi-fullscreen fs-6 text-white position-absolute top-50 start-50 translate-middle bg-dark rounded-1 p-2 lh-1"></i>
								</div>
							</div>
						</a>
					</div>

					<!-- Slider item -->
					<div>
						<a data-glightbox="" data-gallery="gallery" href="/images/category/hotel/gallery/02_1.jpg">
							<div class="card card-element-hover card-overlay-hover overflow-hidden">
								<!-- Image -->
								<img src="/images/category/hotel/gallery/02_1.jpg" class="rounded-3" alt="">
								<!-- Full screen button -->
								<div class="hover-element w-100 h-100">
									<i class="bi bi-fullscreen fs-6 text-white position-absolute top-50 start-50 translate-middle bg-dark rounded-1 p-2 lh-1"></i>
								</div>
							</div>
						</a>
					</div>

					<!-- Slider item -->
					<div>
						<a data-glightbox="" data-gallery="gallery" href="/images/category/hotel/gallery/03_1.jpg">
							<div class="card card-element-hover card-overlay-hover overflow-hidden">
								<!-- Image -->
								<img src="/images/category/hotel/gallery/03_1.jpg" class="rounded-3" alt="">
								<!-- Full screen button -->
								<div class="hover-element w-100 h-100">
									<i class="bi bi-fullscreen fs-6 text-white position-absolute top-50 start-50 translate-middle bg-dark rounded-1 p-2 lh-1"></i>
								</div>
							</div>
						</a>
					</div>

					<!-- Slider item -->
					<div>
						<a data-glightbox="" data-gallery="gallery" href="/images/category/hotel/gallery/05_1.jpg">
							<div class="card card-element-hover card-overlay-hover overflow-hidden">
								<!-- Image -->
								<img src="/images/category/hotel/gallery/05_1.jpg" class="rounded-3" alt="">
								<!-- Full screen button -->
								<div class="hover-element w-100 h-100">
									<i class="bi bi-fullscreen fs-6 text-white position-absolute top-50 start-50 translate-middle bg-dark rounded-1 p-2 lh-1"></i>
								</div>
							</div>
						</a>
					</div>

					<!-- Slider item -->
					<div>
						<a data-glightbox="" data-gallery="gallery" href="/images/category/hotel/gallery/08_1.jpg">
							<div class="card card-element-hover card-overlay-hover overflow-hidden">
								<!-- Image -->
								<img src="/images/category/hotel/gallery/08_1.jpg" class="rounded-3" alt="">
								<!-- Full screen button -->
								<div class="hover-element w-100 h-100">
									<i class="bi bi-fullscreen fs-6 text-white position-absolute top-50 start-50 translate-middle bg-dark rounded-1 p-2 lh-1"></i>
								</div>
							</div>
						</a>
					</div>

					<!-- Slider item -->
					<div>
						<a data-glightbox="" data-gallery="gallery" href="/images/category/hotel/gallery/04_1.jpg">
							<div class="card card-element-hover card-overlay-hover overflow-hidden">
								<!-- Image -->
								<img src="/images/category/hotel/gallery/04_1.jpg" class="rounded-3" alt="">
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
						<a data-glightbox="" data-gallery="gallery" href="/images/category/hotel/gallery/06_1.jpg">
							<div class="card card-element-hover card-overlay-hover overflow-hidden">
								<!-- Image -->
								<img src="/images/category/hotel/gallery/06_1.jpg" class="rounded-3" alt="">
								<!-- Full screen button -->
								<div class="hover-element w-100 h-100">
									<i class="bi bi-fullscreen fs-6 text-white position-absolute top-50 start-50 translate-middle bg-dark rounded-1 p-2 lh-1"></i>
								</div>
							</div>
						</a>
					</div>

					<!-- Slider item -->
					<div>
						<a data-glightbox="" data-gallery="gallery" href="/images/category/hotel/gallery/07_1.jpg">
							<div class="card card-element-hover card-overlay-hover overflow-hidden">
								<!-- Image -->
								<img src="/images/category/hotel/gallery/07_1.jpg" class="rounded-3" alt="">
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

<%@ include file="/WEB-INF/views/include/footer.jsp" %>

</body>
</html>