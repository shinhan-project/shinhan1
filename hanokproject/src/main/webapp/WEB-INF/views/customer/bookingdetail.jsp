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
								<li class="breadcrumb-item">Hotel detail</li>
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
							<div class="card border mt-4">
								<!-- Card header -->
								<div class="card-header border-bottom d-md-flex justify-content-md-between">
									<h5 class="card-title mb-0">Deluxe Pool View with Breakfast</h5>
									<a href="#" class="btn btn-link p-0 mb-0">View Cancellation Policy</a>
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
							<h4 class="card-title mb-0"><i class="bi bi-people-fill me-2"></i>Customer Details</h4>
						</div>
							
						<!-- Card body START -->
						<div class="card-body p-4">
							<!-- Form START -->
							<form class="row g-4">
								<!-- Title -->
								<div class="col-12">
									<div class="bg-light rounded-2 px-4 py-3">
									<h6 class="col-md-4">Customer Name</h6>
										<h6 class="mb-0">${reservations.customer_name }</h6>
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
									<a href="#" class="btn btn-link mb-0 p-0"><i class="fa-solid fa-plus me-2"></i>Add New Guest</a>
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
							<div class="alert alert-info my-4" role="alert">
								<a href="sign-up.html" class="alert-heading h6">Login</a> to prefill all details and get access to secret deals
							</div>
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
											<i class="bi bi-credit-card text-primary me-2"></i>	<span class="me-5">Credit or Debit Card</span>
										</button>
									</h6>
									<div id="collapse-1" class="accordion-collapse collapse show" aria-labelledby="heading-1" data-bs-parent="#accordioncircle">
										<!-- Accordion body -->
										<div class="accordion-body">

											<!-- Card list -->     
											<div class="d-sm-flex justify-content-sm-between my-3">
												<h6 class="mb-2 mb-sm-0">We Accept:</h6>
												<ul class="list-inline my-0">
													<li class="list-inline-item"> <a href="#"><img src="/images/element/visa.svg" class="h-30px" alt=""></a></li>
													<li class="list-inline-item"> <a href="#"><img src="/images/element/mastercard.svg" class="h-30px" alt=""></a></li>
													<li class="list-inline-item"> <a href="#"><img src="/images/element/expresscard.svg" class="h-30px" alt=""></a></li>
												</ul>
											</div>

											<!-- Form START -->
											<form class="row g-3">
												<!-- Card number -->
												<div class="col-12">
													<label class="form-label"><span class="h6 fw-normal">Card Number *</span></label>
													<div class="position-relative">
														<input type="text" class="form-control" maxlength="14" placeholder="XXXX XXXX XXXX XXXX">
														<img src="/images/element/visa.svg" class="w-30px position-absolute top-50 end-0 translate-middle-y me-2 d-none d-sm-block" alt="">
													</div>	
												</div>
												<!-- Expiration Date -->
												<div class="col-md-6">
													<label class="form-label"><span class="h6 fw-normal">Expiration date *</span></label>
													<div class="input-group">
													</div>
												</div>	
												
												<!-- Card name -->
												<div class="col-12">
													<label class="form-label"><span class="h6 fw-normal">Name on Card *</span></label>
													<input type="text" class="form-control" aria-label="name of card holder" placeholder="Enter card holder name">
												</div>

												<!-- Alert box START -->
												<div class="col-12">
													<div class="alert alert-success alert-dismissible fade show my-3" role="alert">

														<!-- Title -->
														<div class="d-sm-flex align-items-center mb-3">
															<img src="/images/element/12.svg" class="w-40px me-3 mb-2 mb-sm-0" alt=""> 
															<h5 class="alert-heading mb-0">$50,000 Covid Cover & More</h5>
														</div>
														
														<!-- Content -->
														<p class="mb-2">Aww yeah, you successfully read this important alert message. This example text is going to run a bit longer so that you can see how spacing within an alert works with this kind of content.</p>

														<!-- Button and price -->
														<div class="d-sm-flex align-items-center">
															<a href="#" class="btn btn-sm btn-success mb-2 mb-sm-0 me-3"><i class="fa-regular fa-plus me-2"></i>Add</a>
															<h6 class="mb-0">$69 per person</h6>
														</div>

														<!-- Close button -->
														<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
													</div>
												</div>
												<!-- Alert box END -->

												<!-- Buttons -->
												<div class="col-12">
													<div class="d-sm-flex justify-content-sm-between align-items-center">
														<h4>$1800 <span class="small fs-6">Due now</span></h4>
														<button class="btn btn-primary mb-0">Pay Now</button>
													</div>
												</div>

											</form>
											<!-- Form END -->
										</div>
									</div>
								</div>
								<!-- Credit or debit card END -->

								<!-- Net banking START -->
								<div class="accordion-item mb-3">
									<h6 class="accordion-header" id="heading-2">
										<button class="accordion-button collapsed rounded" type="button" data-bs-toggle="collapse" data-bs-target="#collapse-2" aria-expanded="false" aria-controls="collapse-2">
											<i class="bi bi-globe2 text-primary me-2"></i> <span class="me-5">Pay with Net Banking</span>
										</button>
									</h6>
									<div id="collapse-2" class="accordion-collapse collapse" aria-labelledby="heading-2" data-bs-parent="#accordioncircle">
										<!-- Accordion body -->
										<div class="accordion-body">

											<!-- Form START -->
											<form class="row g-3 mt-1">

												<!-- Popular bank -->
												<ul class="list-inline mb-0">

													<li class="list-inline-item"> <h6 class="mb-0">Popular Bank:</h6> </li>
													<!-- Rent -->
													<li class="list-inline-item">
														<input type="radio" class="btn-check" name="options" id="option1">
														<label class="btn btn-light btn-primary-soft-check" for="option1">
															<img src="/images/element/13.svg" class="h-20px me-2" alt="">Bank of America
														</label>
													</li>
													<!-- Sale -->
													<li class="list-inline-item">
														<input type="radio" class="btn-check" name="options" id="option2">
														<label class="btn btn-light btn-primary-soft-check" for="option2">
															<img src="/images/element/15.svg" class="h-20px me-2" alt="">Bank of Japan
														</label>
													</li>
													<!-- Buy -->
													<li class="list-inline-item">
														<input type="radio" class="btn-check" name="options" id="option3">
														<label class="btn btn-light btn-primary-soft-check" for="option3">
															<img src="/images/element/14.svg" class="h-20px me-2" alt="">VIVIV Bank
														</label>
													</li>
												</ul>

												<p class="mb-1">In order to complete your transaction, we will transfer you over to Booking secure servers.</p>
												<p class="my-0">Select your bank from the drop-down list and click proceed to continue with your payment.</p>
												<!-- Select bank -->
												<div class="col-md-6">
													<select class="form-select form-select-sm js-choice border-0">
														<option value="">Please choose one</option>
														<option>Bank of America</option>
														<option>Bank of India</option>
														<option>Bank of London</option>
													</select>
												</div>

												<!-- Button -->
												<div class="d-grid">
													<button class="btn btn-success mb-0">Pay $1800</button>
												</div>

											</form>
											<!-- Form END -->
										</div>
									</div>
								</div>
								<!-- Net banking END -->

								<!-- Paypal START -->
								<div class="accordion-item mb-3">
									<h6 class="accordion-header" id="heading-3">
										<button class="accordion-button collapsed rounded" type="button" data-bs-toggle="collapse" data-bs-target="#collapse-3" aria-expanded="false" aria-controls="collapse-3">
											<i class="bi bi-paypal text-primary me-2"></i><span class="me-5">Pay with Paypal</span>
										</button>
									</h6>
									<div id="collapse-3" class="accordion-collapse collapse" aria-labelledby="heading-3" data-bs-parent="#accordioncircle">
										<!-- Accordion body -->
										<div class="accordion-body">
											<div class="card card-body border align-items-center text-center mt-4">
												<!-- Image -->
												<img src="/images/element/paypal.svg" class="h-70px mb-3" alt="">
												<p class="mb-3"><strong>Tips:</strong> Simply click on the payment button below to proceed to the PayPal payment page.</p>
												<a href="#" class="btn btn-sm btn-outline-primary mb-0">Pay with paypal</a>
											</div>
										</div>
									</div>
								</div>
								<!-- Paypal END -->
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
										<span class="fs-5">${reservations.reservation_price }won</span>
									</li>
									
								</ul>
								
							</div>
							<hr>
							<div>
							<ul class="list-group list-group-borderless">
							<li class="list-group-item d-flex justify-content-between align-items-center">
							<span class="h6 fw-light mb-0">Payed date</span>
							<span class="fs-6">${reservations.pay_date }</span>
							</li>
							</ul>
							</div>
	
							<!-- Card footer -->
							
						</div>
					</div>
					<!-- Price summary END -->

				

					

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