<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title> Check My Booking </title>

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
										<img class="avatar-img rounded-circle border border-2 border-white" src="/images/avatar/01.jpg" alt="">
									</div>
									<hr>
								</div>

								<!-- Sidebar menu item START -->
								<ul class="nav nav-pills-primary-soft flex-column">
									<li class="nav-item">
										<a class="nav-link" href="profile.do"><i class="bi bi-person fa-fw me-2"></i>My Profile</a>
									</li>
									<li class="nav-item">
										<a class="nav-link active" href="account-bookings.html"><i class="bi bi-ticket-perforated fa-fw me-2"></i>My Bookings</a>
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
								<a class="nav-link mb-0 active" data-bs-toggle="tab" href="#tab-1"><i class="bi bi-briefcase-fill fa-fw me-1"></i>Upcoming Booking</a> 
							</li>
							<li class="nav-item">
								<a class="nav-link mb-0" data-bs-toggle="tab" href="#tab-2"><i class="bi bi-x-octagon fa-fw me-1"></i>Canceled Booking</a> 
								</li>
							<li class="nav-item"> 
								<a class="nav-link mb-0" data-bs-toggle="tab" href="#tab-3"><i class="bi bi-patch-check fa-fw me-1"></i>Completed Booking</a> 
							</li>
						</ul>

						<!-- Tabs content START -->
						<div class="tab-content p-2 p-sm-4" id="nav-tabContent">

							<!-- Tab content item START -->
							<div class="tab-pane fade show active" id="tab-1">
								<h6>Completed booking (2)</h6>
                <!-- Card item START -->
								<div class="card border mb-4">
									<!-- Card header -->
									<div class="card-header border-bottom d-md-flex justify-content-md-between align-items-center">
										<!-- Icon and Title -->
										<div class="d-flex align-items-center">
											<div class="icon-lg bg-light rounded-circle flex-shrink-0"><i class="fa-solid fa-plane"></i></div>	
											<!-- Title -->
											<div class="ms-2">
												<h6 class="card-title mb-0">France to New York</h6>
												<ul class="nav nav-divider small">
													<li class="nav-item">Booking ID: CGDSUAHA12548</li>
													<li class="nav-item">Business class</li>
												</ul>
											</div>
										</div>
	
										<!-- Button -->
										<div class="mt-2 mt-md-0">
											<a href="#" class="btn btn-primary-soft mb-0">Manage Booking</a>
										</div>
									</div>
	
									<!-- Card body -->
									<div class="card-body">
										<div class="row g-3">
											<div class="col-sm-6 col-md-4">
												<span>Departure time</span>
												<h6 class="mb-0">Tue 05 Aug 12:00 AM</h6>
											</div>
	
											<div class="col-sm-6 col-md-4">
												<span>Arrival time</span>
												<h6 class="mb-0">Tue 06 Aug 4:00 PM</h6>
											</div>
	
											<div class="col-md-4">
												<span>Booked by</span>
												<h6 class="mb-0">Frances Guerrero</h6>
											</div>
										</div>
									</div>
								</div>
								<!-- Card item END -->

								<!-- Card item START -->
								<div class="card border">
									<!-- Card header -->
									<div class="card-header border-bottom d-md-flex justify-content-md-between align-items-center">
										<!-- Icon and Title -->
										<div class="d-flex align-items-center">
											<div class="icon-lg bg-light rounded-circle flex-shrink-0"><i class="fa-solid fa-car"></i></div>	
											<!-- Title -->
											<div class="ms-2">
												<h6 class="card-title mb-0">Chicago to San Antonio</h6>
												<ul class="nav nav-divider small">
													<li class="nav-item">Booking ID: CGDSUAHA12548</li>
													<li class="nav-item">Camry, Accord</li>
												</ul>
											</div>
										</div>
	
										<!-- Button -->
										<div class="mt-2 mt-md-0">
											<a href="#" class="btn btn-primary-soft mb-0">Manage Booking</a>
										</div>
									</div>
	
									<!-- Card body -->
									<div class="card-body">
										<div class="row g-3">
											<div class="col-sm-6 col-md-4">
												<span>Pickup address</span>
												<h6 class="mb-0">40764 Winchester Rd</h6>
											</div>
	
											<div class="col-sm-6 col-md-4">
												<span>Drop address</span>
												<h6 class="mb-0">11185 Mary Ball Rd</h6>
											</div>
	
											<div class="col-md-4">
												<span>Booked by</span>
												<h6 class="mb-0">Frances Guerrero</h6>
											</div>
										</div>
									</div>
								</div>
								<!-- Card item END -->
							</div>
							<!-- Tabs content item END -->

							<!-- Tab content item START -->
							<div class="tab-pane fade" id="tab-2">
								<h6>Cancelled booking (1)</h6>
	
								<!-- Card item START -->
								<div class="card border">
									<!-- Card header -->
									<div class="card-header border-bottom d-md-flex justify-content-md-between align-items-center">
										<!-- Icon and Title -->
										<div class="d-flex align-items-center">
											<div class="icon-lg bg-light rounded-circle flex-shrink-0"><i class="fa-solid fa-hotel"></i></div>
												<!-- Title -->
											<div class="ms-2">
												<h6 class="card-title mb-0">Courtyard by Marriott New York</h6>
												<ul class="nav nav-divider small">
													<li class="nav-item">Booking ID: CGDSUAHA12548</li>
													<li class="nav-item">AC</li>
												</ul>
											</div>
										</div>
	
										<!-- Button -->
										<div class="mt-2 mt-md-0">
											<a href="#" class="btn btn-primary-soft mb-0">Manage Booking</a>
											<p class="text-danger text-md-end mb-0">Booking cancelled</p>
										</div>
									</div>
	
									<!-- Card body -->
									<div class="card-body">
										<div class="row g-3">
											<div class="col-sm-6 col-md-4">
												<span>Check in time</span>
												<h6 class="mb-0">Tue 05 Aug 12:00 AM</h6>
											</div>
	
											<div class="col-sm-6 col-md-4">
												<span>Check out time</span>
												<h6 class="mb-0">Tue 12 Aug 4:00 PM</h6>
											</div>
	
											<div class="col-md-4">
												<span>Booked by</span>
												<h6 class="mb-0">Frances Guerrero</h6>
											</div>
										</div>
									</div>
								</div>
								<!-- Card item END -->
							</div>
							<!-- Tabs content item END -->
	
							<!-- Tab content item START -->
							<div class="tab-pane fade" id="tab-3">
                <div class="bg-mode shadow p-4 rounded overflow-hidden">
									<div class="row g-4 align-items-center">
										<!-- Content -->
										
										<!-- if문 넣기! -->
										<div class="col-md-9">
											<h6>Looks like you have never booked with BOOKING</h6>
											<h4 class="mb-2">When you book your trip will be shown here.</h4>
											<a href="hotel-list.html" class="btn btn-primary-soft mb-0">Start booking now</a>
										</div>
										<!-- Image -->
										<div class="col-md-3 text-end">
											<img src="/images/element/17.svg" class="mb-n5" alt="">
										</div>
									</div>
								</div>
								
							</div>
							<!-- Tabs content item END -->
						</div>

					</div>
					<!-- Card body END -->
				</div>

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