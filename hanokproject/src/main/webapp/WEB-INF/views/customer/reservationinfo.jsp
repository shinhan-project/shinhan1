<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Booking - Multipurpose Online Booking Theme</title>

	<!-- Meta Tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="author" content="Webestica.com">
	<meta name="description" content="Booking - Multipurpose Online Booking Theme">

	<!-- Dark mode -->
	<script>
		const storedTheme = localStorage.getItem('theme')
 
		const getPreferredTheme = () => {
			if (storedTheme) {
				return storedTheme
			}
			return window.matchMedia('(prefers-color-scheme: dark)').matches ? 'dark' : 'light'
		}

		const setTheme = function (theme) {
			if (theme === 'auto' && window.matchMedia('(prefers-color-scheme: dark)').matches) {
				document.documentElement.setAttribute('data-bs-theme', 'dark')
			} else {
				document.documentElement.setAttribute('data-bs-theme', theme)
			}
		}

		setTheme(getPreferredTheme())

		window.addEventListener('DOMContentLoaded', () => {
		    var el = document.querySelector('.theme-icon-active');
			if(el != 'undefined' && el != null) {
				const showActiveTheme = theme => {
				const activeThemeIcon = document.querySelector('.theme-icon-active use')
				const btnToActive = document.querySelector(`[data-bs-theme-value="${theme}"]`)
				const svgOfActiveBtn = btnToActive.querySelector('.mode-switch use').getAttribute('href')

				document.querySelectorAll('[data-bs-theme-value]').forEach(element => {
					element.classList.remove('active')
				})

				btnToActive.classList.add('active')
				activeThemeIcon.setAttribute('href', svgOfActiveBtn)
			}

			window.matchMedia('(prefers-color-scheme: dark)').addEventListener('change', () => {
				if (storedTheme !== 'light' || storedTheme !== 'dark') {
					setTheme(getPreferredTheme())
				}
			})

			showActiveTheme(getPreferredTheme())

			document.querySelectorAll('[data-bs-theme-value]')
				.forEach(toggle => {
					toggle.addEventListener('click', () => {
						const theme = toggle.getAttribute('data-bs-theme-value')
						localStorage.setItem('theme', theme)
						setTheme(theme)
						showActiveTheme(theme)
					})
				})

			}
		})
		
	</script>

	<!-- Favicon -->
	<link rel="shortcut icon" href="/images/favicon.ico">

	<!-- Google Font -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;700&family=Poppins:wght@400;500;700&display=swap">

	<!-- Plugins CSS -->
	<link rel="stylesheet" type="text/css" href="/vendor/font-awesome/css/all.min.css">
	<link rel="stylesheet" type="text/css" href="/vendor/bootstrap-icons/bootstrap-icons.css">
	<link rel="stylesheet" type="text/css" href="/vendor/choices/css/choices.min.css">

	<!-- Theme CSS -->
	<link rel="stylesheet" type="text/css" href="/css/style.css">

</head>

<body>

<%@ include file="/WEB-INF/views/include/header.jsp" %>

<!-- **************** MAIN CONTENT START **************** -->
<main>

<!-- =======================
Page banner START -->
<section class="py-0">
	<div class="container">
		<!-- Card START -->
		<div class="card bg-light overflow-hidden px-sm-5">
			<div class="row align-items-center g-4">

				<!-- Content -->
				<div class="col-sm-9">
					<div class="card-body">
						<!-- Breadcrumb -->
						<nav aria-label="breadcrumb">
						</nav>
						<!-- Title -->
						<h1 class="m-0 h2 card-title">Check your Booking</h1>
					</div>
				</div>	

				<!-- Image -->
				<div class="col-sm-3 text-end d-none d-sm-block">
					<img src="/images/element/17.svg" class="mb-n4" alt="">
				</div>
			</div>
		</div>
		<!-- Card END -->
	</div>
</section>
<!-- =======================
Page banner END -->

<!-- =======================
Page content START -->
<section>
	<div class="container">
		<div class="row g-4 g-lg-5">	

			<!-- Left side content START -->
			<div class="col-xl-12">
				<div class="vstack gap-5">
					<!-- Hotel information START -->
					<div class="card shadow">
						<!-- Card header -->
						<div class="card-header p-4">
							<!-- Title -->
							<h3 class="mb-0"><i class="fa-solid fa-hotel me-2"></i>Hanok Information</h3>
						</div>

						<!-- Card body START -->
						<div class="card-body p-4">
							<!-- Card list START -->
							<div class="card mb-4">
								<div class="row align-items-center">
									<!-- Image -->
									<div class="col-sm-6 col-md-3">
										<img src="/images/category/hotel/4by3/02_1.png" class="card-img" alt="">
									</div>

									<!-- Card Body -->
									<div class="col-sm-6 col-md-9">
										<div class="card-body pt-3 pt-sm-0 p-0">
											<!-- Title -->
											<h5 class="card-title"><a href="#">담소정</a></h5>
											<p class="small mb-2"><i class="bi bi-geo-alt me-2"></i>서울시 종로구 북촌로9길 16-2</p>

											<!-- Rating star -->
											<ul class="list-inline mb-0">
												<li class="list-inline-item me-0 small"><i class="fa-solid fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fa-solid fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fa-solid fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fa-solid fa-star text-warning"></i></li>
												<li class="list-inline-item me-0 small"><i class="fa-solid fa-star-half-alt text-warning"></i></li>
												<li class="list-inline-item ms-2 h6 small fw-bold mb-0">4.5/5.0</li>
											</ul>
										</div>
									</div>

								</div>
							</div>
							<!-- Card list END -->
							
							<!-- Information START -->
							<div class="row g-4">
								<!-- Item -->
								<div class="col-lg-4">
									<div class="bg-light py-3 px-4 rounded-3">
										<h6 class="fw-light small mb-1">체크인</h6>
										<h5 class="mb-1">2025-01-02</h5>
										<small><i class="bi bi-alarm me-1"></i>12:30 pm</small>
									</div>
								</div>

								<!-- Item -->
								<div class="col-lg-4">
									<div class="bg-light py-3 px-4 rounded-3">
										<h6 class="fw-light small mb-1">체크아웃</h6>
										<h5 class="mb-1">2025-01-07</h5>
										<small><i class="bi bi-alarm me-1"></i>4:30 pm</small>
									</div>
								</div>

								<!-- Item -->
								<div class="col-lg-4">
									<div class="bg-light py-3 px-4 rounded-3">
										<h6 class="fw-light small mb-1">객실</h6>
										<h5 class="mb-1">일반실 - 침대</h5>
										<small><i class="bi bi-brightness-high me-1"></i>5박6일</small>
									</div>
								</div>
							</div>
							<!-- Information END -->

							<!-- Card START -->
							<div class="card border mt-4">
								<!-- Card header -->
								<div class="card-header border-bottom d-md-flex justify-content-md-between">
									<h5 class="card-title mb-0">Price Summary</h5>
								</div>
							<!-- Card body -->
							<div class="card-body">
								<ul class="list-group list-group-borderless">
									<li class="list-group-item d-flex justify-content-between align-items-center">
										<span class="h6 fw-light mb-0">Room Charges</span>
										<span class="fs-5">$28,660</span>
									</li>
									<li class="list-group-item d-flex justify-content-between align-items-center">
										<span class="h6 fw-light mb-0">Total Discount<span class="badge text-bg-danger smaller mb-0 ms-2">10% off</span></span>
										<span class="fs-5 text-success">-$2,560</span>	
									</li>
									<li class="list-group-item d-flex justify-content-between align-items-center">
										<span class="h6 fw-light mb-0">Price after discount</span>
										<span class="fs-5">$1852</span>
									</li>
									<li class="list-group-item d-flex justify-content-between align-items-center">
										<span class="h6 fw-light mb-0">Taxes % Fees</span>
										<span class="fs-5">$350</span>
									</li>
								</ul>
							</div>
	
							<!-- Card footer -->
							<div class="card-footer border-top">
								<div class="d-flex justify-content-between align-items-center">
									<span class="h5 mb-0">Payable Now</span>
									<span class="h5 mb-0">$22,500</span>
								</div>
							</div>
						</div>
					</div>
								<!-- Card body -->
								<div class="card-body">
									<h6>Price Included</h6>
									<!-- List -->
									<ul class="list-group list-group-borderless mb-0">
										<li class="list-group-item h6 fw-light d-flex mb-0"><i class="bi bi-patch-check-fill text-success me-2"></i>Free Breakfast and Lunch/Dinner.</li>
										<li class="list-group-item h6 fw-light d-flex mb-0"><i class="bi bi-patch-check-fill text-success me-2"></i>Great Small Breaks.</li>
										<li class="list-group-item h6 fw-light d-flex mb-0"><i class="bi bi-patch-check-fill text-success me-2"></i>Free Stay for Kids Below the age of 12 years.</li>
										<li class="list-group-item h6 fw-light d-flex mb-0"><i class="bi bi-patch-check-fill text-success me-2"></i>On Cancellation, You will not get any refund</li>
									</ul>
									</div>
									<div class="text-end" style="margin-top: -30px; margin-right: 25px;">
									<!-- Button -->
									<a href="mybookings.do" class="btn btn-sm btn-dark">Back</a>
								</div>
							</div>
							<!-- Card END -->
						</div>
						<!-- Card body END -->
					</div>
					<!-- Hotel information END -->








					<!-- Guest detail START -->
					<div class="card shadow">
						<!-- Card header -->
						<div class="card-header border-bottom p-4">
							<h4 class="card-title mb-0"><i class="bi bi-people-fill me-2"></i>Guest Details</h4>
						</div>
							
						<!-- Card body START -->
						<div class="card-body p-4">
							<!-- Form START -->
							<form class="row g-4">
								<!-- Title -->
								<div class="col-12">
									<div class="bg-light rounded-2 px-4 py-3">
										<h6 class="mb-0">Main Guest</h6>
									</div>
								</div>
								
								<!-- Select -->
								<div class="col-md-2">
									<div class="form-size-lg">
										<label class="form-label">Title</label>
										<select class="form-select js-choice">
											<option>Mr</option>
											<option>Mrs</option>
										</select>
									</div>	
								</div>

								<!-- Input -->
								<div class="col-md-5">
									<label class="form-label">First Name</label>
									<input type="text" class="form-control form-control-lg" placeholder="Enter your name">
								</div>

								<!-- Input -->
								<div class="col-md-5">
									<label class="form-label">Last Name</label>
									<input type="text" class="form-control form-control-lg" placeholder="Enter your name">
								</div>

								<!-- Button -->
								<div class="col-12">
									<a href="#" class="btn btn-link mb-0 p-0"><i class="fa-solid fa-plus me-2"></i>Add New Guest</a>
								</div>

								<!-- Input -->
								<div class="col-md-6">
									<label class="form-label">Email id</label>
									<input type="email" class="form-control form-control-lg" placeholder="Enter your email">
									<div id="emailHelp" class="form-text">(Booking voucher will be sent to this email ID)</div>
								</div>

								<!-- Input -->
								<div class="col-md-6">
									<label class="form-label">Mobile number</label>
									<input type="text" class="form-control form-control-lg" placeholder="Enter your mobile number">
								</div>
							</form>
							<!-- Form END -->

							<!-- Alert START -->
							<div class="alert alert-info my-4" role="alert">
								<a href="sign-up.html" class="alert-heading h6">Login</a> to prefill all details and get access to secret deals
							</div>
							<!-- Alert END -->

							<!-- Special request START -->
							<div class="card border mt-4">
								<!-- Card header -->
								<div class="card-header border-bottom">
									<h5 class="card-title mb-0">Special request</h5>
								</div>

								<!-- Card body START -->
								<div class="card-body">
									<form class="hstack flex-wrap gap-3">
										<!-- Checkbox -->
										<div class="form-check">
											<input class="form-check-input" type="checkbox" value="" id="hotelType1">
											<label class="form-check-label" for="hotelType1">Smoking room</label>
										</div>
										<!-- Checkbox -->
										<div class="form-check">
											<input class="form-check-input" type="checkbox" value="" id="hotelType2">
											<label class="form-check-label" for="hotelType2">Late check-in</label>
										</div>
										<!-- Checkbox -->
										<div class="form-check">
											<input class="form-check-input" type="checkbox" value="" id="hotelType3">
											<label class="form-check-label" for="hotelType3">Early check-in</label>
										</div>
										<!-- Checkbox -->
										<div class="form-check">
											<input class="form-check-input" type="checkbox" value="" id="hotelType4">
											<label class="form-check-label" for="hotelType4">Room on a high floor</label>
										</div>
										<!-- Checkbox -->
										<div class="form-check">
											<input class="form-check-input" type="checkbox" value="" id="hotelType5">
											<label class="form-check-label" for="hotelType5">Large bed</label>
										</div>
										<!-- Checkbox -->
										<div class="form-check">
											<input class="form-check-input" type="checkbox" value="" id="hotelType6">
											<label class="form-check-label" for="hotelType6">Airport transfer</label>
										</div>
										<!-- Checkbox -->
										<div class="form-check">
											<input class="form-check-input" type="checkbox" value="" id="hotelType8">
											<label class="form-check-label" for="hotelType8">Twin beds</label>
										</div>
									</form>	
								</div>
								<!-- Card body END -->
							</div>
							<!-- Special request END -->
						</div>
						<!-- Card body END -->
					</div>
					<!-- Guest detail END -->

					
				</div>	
			</div>
			<!-- Left side content END -->

			
		</div> <!-- Row END -->
	</div>
</section>
<!-- =======================
Page content START -->

</main>
<!-- **************** MAIN CONTENT END **************** -->

<!-- =======================
Footer START -->
<footer class="bg-dark p-3">
	<div class="container">
		<div class="row align-items-center">

			<!-- Widget -->
			<div class="col-md-4">
				<div class="text-center text-md-start mb-3 mb-md-0">
					<a href="index.html"> <img class="h-30px" src="/images/logo-light.svg" alt="logo"> </a>
				</div> 
			</div>
			
			<!-- Widget -->
			<div class="col-md-4">
				<div class="text-body-secondary text-primary-hover"> Copyrights ©2024 Booking. Build by <a href="https://www.webestica.com/" class="text-body-secondary">Webestica</a>. </div>
			</div>

			<!-- Widget -->
			<div class="col-md-4">
				<ul class="list-inline mb-0 text-center text-md-end">
					<li class="list-inline-item ms-2"><a href="#"><i class="text-white fab fa-facebook"></i></a></li>
					<li class="list-inline-item ms-2"><a href="#"><i class="text-white fab fa-instagram"></i></a></li>
					<li class="list-inline-item ms-2"><a href="#"><i class="text-white fab fa-linkedin-in"></i></a></li>
					<li class="list-inline-item ms-2"><a href="#"><i class="text-white fab fa-twitter"></i></a></li>
				</ul>
			</div>
		</div>
	</div>
</footer>
<!-- =======================
Footer END -->

<!-- Back to top -->
<div class="back-top"></div>

<!-- Bootstrap JS -->
<script src="/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

<!-- Vendors -->
<script src="/vendor/choices/js/choices.min.js"></script>

<!-- ThemeFunctions -->
<script src="/js/functions.js"></script>

</body>
</html>