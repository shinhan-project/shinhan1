<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
							<ol class="breadcrumb breadcrumb-dots mb-0">
								<li class="breadcrumb-item"><a href="index.html"><i class="bi bi-house me-1"></i> Home</a></li>
								<li class="breadcrumb-item">Hanok detail</li>
								<li class="breadcrumb-item active">Booking</li>
							</ol>
						</nav>
						<!-- Title -->
						<h1 class="m-0 h2 card-title">View your Booking</h1>
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
			<div class="col-xl-8">
				<div class="vstack gap-5">
					<!-- Hanok information START -->
					<div class="card shadow">
						<!-- Card header -->
						<div class="card-header p-4 border-bottom">
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
										<img src="/images/hanoks/${reservations.hanok_imgName}" class="card-img rounded-2" alt="Card image">
									</div>

									<!-- Card Body -->
									<div class="col-sm-6 col-md-9">
										<div class="card-body pt-3 pt-sm-0 p-0">
											<!-- Title -->
											<h5 class="card-title"><a href="#">${reservations.room_name}</a></h5>
											<p class="small mb-2"><i class="bi bi-geo-alt me-2"></i>${reservations.hanok_name}</p>

											
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
										<h6 class="fw-light small mb-1">Check-in</h6>
										
										<h5>
								<fmt:formatDate value="${reservations.checkin}" pattern="yyyy-MM-dd"/>
							</h5>
							<fmt:setLocale value="en"/>
										<small><i class="bi bi-alarm me-1"></i><fmt:formatDate value="${reservations.checkin}" pattern="hh:mm a"/>
										</small>
									</div>
								</div>

								<!-- Item -->
								<div class="col-lg-4">
									<div class="bg-light py-3 px-4 rounded-3">
										<h6 class="fw-light small mb-1">Check out</h6>
										
										<h5 class="mb-1">
											<fmt:formatDate value="${reservations.checkin}" pattern="yyyy-MM-dd"/>
										</h5>
										<fmt:setLocale value="en"/>
										<small><i class="bi bi-alarm me-1"></i>
										<fmt:formatDate value="${reservations.checkin}" pattern="hh:mm a"/>
										</small>
									</div>
									
									
								</div>

								<!-- Item -->
								<div class="col-lg-4">
									
								</div>
							</div>
							<!-- Information END -->

							<!-- Card START -->
							
							<!-- Card END -->
						</div>
						<!-- Card body END -->
					</div>
					<!-- Hotel information END -->

					<!-- Guest detail START -->
					<div class="card shadow">
						<!-- Card header -->
						<div class="card-header border-bottom p-4">
							<h4 class="card-title mb-0"><i class="bi bi-people-fill me-2"></i>Customer Details</h4>
						</div>
							
						<!-- Card body START -->
						<div class="card-body p-4">
							<!-- Form START -->
							<form class="row g-4">
								<!-- Title -->
								<div class="col-12">
									
									<label class="form-label"><span class="h6 fw-normal">Customer Name</span></label>
													<div class="position-relative">
														<label class="form-label"><span class="h6 fw-normal"></span>${reservations.customer_name }</label> <hr>
													</div>	
								</div>
								
								
								<!-- Input -->
								<div class="col-md-5">
									<label class="form-label">Mobile number</label>
									<option>${reservations.customer_tel }</option>
								</div>

								<!-- Input -->
								<div class="col-md-5">
									<label class="form-label">Email</label>
									<option>${reservations.customer_email }</option>								
								</div>

								<!-- Button -->
								<div class="col-12">
									
								</div>

								<!-- Input -->
								<div class="col-md-5">
									<label class="form-label">Reservation Number</label>
									<option>${reservations.reservations_id }</option>								
								</div>

								<!-- Input -->
							<div class="col-md-5">
									<label class="form-label">Reservation Name</label>
									<option>${reservations.reservation_name }</option>								
								</div>
							</form>
							<!-- Form END -->

							<!-- Alert START -->
							
								<hr>
							
							<!-- Alert END -->

							<!-- Special request START -->
							
							<!-- Special request END -->
						</div>
						<!-- Card body END -->
					</div>
					<!-- Guest detail END -->

					<!-- Payment Information START -->
					<div class="card shadow">
						<!-- Card header -->
						<div class="card-header border-bottom p-4">
							<!-- Title -->
							<h4 class="card-title mb-0"><i class="bi bi-wallet-fill me-2"></i>Payment Information</h4>
						</div>
						
						<!-- Card body START -->
						<div class="card-body p-4 pb-0">
							<!-- Action box START -->
							
							<!-- Action box END -->

							<!-- Accordion START -->
							<div class="accordion accordion-icon accordion-bg-light" id="accordioncircle">
								<!-- Credit or debit card START -->
								<div class="accordion-item mb-3">
									<h6 class="accordion-header" id="heading-1">
										<button class="accordion-button rounded collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse-1" aria-expanded="true" aria-controls="collapse-1">
											<i class="bi bi-credit-card text-primary me-2"></i>	<span class="me-5">Payment Information</span>
										</button>
									</h6>
									<div id="collapse-1" class="accordion-collapse collapse show" aria-labelledby="heading-1" data-bs-parent="#accordioncircle">
										<!-- Accordion body -->
										<div class="accordion-body">

											<!-- Card list -->     
											<div class="d-sm-flex justify-content-sm-between my-3">
												
												<ul class="list-inline my-0">
													<li class="list-inline-item"> <a href="#"><img src="/images/element/kakaopay.png" class="h-30px" alt=""></a></li>
													<li class="list-inline-item"> <a href="#"><img src="/images/element/naverpay.png" class="h-30px" alt=""></a></li>
													<li class="list-inline-item"> <a href="#"><img src="/images/element/creditcard1.png" class="h-30px" alt=""></a></li>
												</ul>
											</div>

											<!-- Form START -->
											<form class="row g-3">
												<!-- Card number -->
												<div class="col-12">
												<label class="form-label"><span class="h6 fw-normal">Customer Name</span></label>
													<div class="position-relative">
														<label class="form-label"><span class="h6 fw-normal"></span>${reservations.customer_name }</label> <hr>
													</div>	
													<label class="form-label"><span class="h6 fw-normal">Pay Type</span></label>
													<div class="position-relative">
														<label class="form-label"><span class="h6 fw-normal"></span>${reservations.pay_type }</label> <hr>
													</div>	
													<label class="form-label"><span class="h6 fw-normal">Payed date</span></label>
													<div class="position-relative">
														<label class="form-label">${reservations.pay_date}</label>
														<hr>
													</div>
													<label class="form-label"><span class="h6 fw-normal">Payed price</span></label>
													<div class="position-relative">
														<label class="form-label"><span class="h6 fw-normal"></span>
															<fmt:formatNumber value="${reservations.reservation_price }" type="number" groupingUsed="true"/> won</label>
													</div>		
												</div>
												<!-- Expiration Date -->
												
												
												<!-- Card name -->
												<div class="col-12">
													<label class="form-label"><span class="h6 fw-normal"></span></label>
												</div>

												<!-- Alert box START -->
												
												<!-- Alert box END -->

												<!-- Buttons -->
												<div class="col-12">
													<div class="d-sm-flex justify-content-sm-between align-items-center">
														<h4><%-- ${reservations.pay_price }  --%><span class="small fs-6"></span></h4>
														<button class="btn btn-primary mb-0" href="/"style="text-align">Back</button>
													</div>
												</div>

											</form>
											<!-- Form END -->
										</div>
									</div>
								</div>
								<!-- Credit or debit card END -->

								<!-- Net banking START -->
								
								<!-- Net banking END -->

							
							</div>
							<!-- Accordion END -->
						</div>	
						<!-- Card body END -->

						<div class="card-footer p-4 pt-0">
							<!-- Condition link -->
							<p class="mb-0">By processing, You accept Booking <a href="#">Terms of Services</a> and <a href="#">Policy</a></p>
						</div>
					</div>
					<!-- Payment Options END -->
				</div>	
			</div>
			<!-- Left side content END -->

			<!-- Right side content START -->
			<aside class="col-xl-4">
				<div class="row g-4">

					<!-- Price summary START -->
					<div class="col-md-6 col-xl-12">
						<div class="card shadow rounded-2">
							<!-- card header -->
							<div class="card-header border-bottom">
								<h5 class="card-title mb-0">Price Summary</h5>
							</div>
	
							<!-- Card body -->
							<div class="card-body">
								<ul class="list-group list-group-borderless">
									<li class="list-group-item d-flex justify-content-between align-items-center">
										<span class="h5 fw-light mb-0">Total</span>
										<span class="fs-5">
											<fmt:formatNumber value="${reservations.reservation_price }" type="number" groupingUsed="true"/>won</span>
									</li>
									
								</ul>
								
							</div>
							<hr>
							<div>
							<ul class="list-group list-group-borderless">
							
							</ul>
							</div>
	
							<!-- Card footer -->
							
						</div> 
					</div>
					<!-- Price summary END -->
					<a class="btn btn-primary mb-0" href="/customer/mybookings.do">Back</a>

				

					

				</div>
			</aside>
			<!-- Right side content END -->
		</div> <!-- Row END -->
	</div>
</section>
<!-- =======================
Page content START -->

</main>
<!-- **************** MAIN CONTENT END **************** -->

<!-- Back to top -->
<div class="back-top"></div>

<!-- Bootstrap JS -->
<script src="/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

<!-- Vendors -->
<script src="/vendor/choices/js/choices.min.js"></script>

<!-- ThemeFunctions -->
<script src="/js/functions.js"></script>
<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>