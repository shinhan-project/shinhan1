<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
<head>
	<title>Gojeuneok Customer Mypage</title>

	<!-- Meta Tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="author" content="Webestica.com">
	<meta name="description" content="Booking - Multipurpose Online Booking Theme">
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    	var dupCheck = false;
    	function goSave() {
    		$("#frm").submit();
    	}
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
	<link rel="stylesheet" type="text/css" href="/vendor/aos/aos.css">
	<link rel="stylesheet" type="text/css" href="/vendor/flatpickr/css/flatpickr.min.css">
	<link rel="stylesheet" type="text/css" href="/vendor/choices/css/choices.min.css">

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
		<div class="row">

			<!-- Sidebar START -->
			<div class="col-lg-4 col-xl-3">
				<!-- Responsive offcanvas body START -->
				<div class="offcanvas-lg offcanvas-end" tabindex="-1" id="offcanvasSidebar" >
					<!-- Offcanvas header -->
					<div class="offcanvas-header justify-content-end pb-2">
						<button type="button" class="btn-close" data-bs-dismiss="offcanvas" data-bs-target="#offcanvasSidebar" aria-label="Close"></button>
					</div>

					<!-- Offcanvas body -->
					<div class="offcanvas-body p-3 p-lg-0">
						<div class="card bg-light w-100">

							<!-- Edit profile button -->
							<div class="position-absolute top-0 end-0 p-3">
								<a href="profile.do" class="text-primary-hover" data-bs-toggle="tooltip" data-bs-title="Edit profile">
									<i class="bi bi-pencil-square"></i>
								</a>
							</div>

							<!-- Card body START -->
							<div class="card-body p-3">
								<!-- Avatar and content -->
								<div class="text-center mb-3">
									<!-- Avatar -->
									<div class="avatar avatar-xl mb-2">
										<img class="avatar-img rounded-circle border border-2 border-white" src="/images/avatar/01-1.jpg" alt="">
									</div>
									<h6 class="mb-0"></h6>
									<a href="#" class="text-reset text-primary-hover small"> </a>
									<hr>
								</div>

								<!-- Sidebar menu item START -->
								<ul class="nav nav-pills-primary-soft flex-column">
									<li class="nav-item">
										<a class="nav-link active" href="profile.do"><i class="bi bi-person fa-fw me-2"></i>My Profile</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" href="mybookings.do"><i class="bi bi-ticket-perforated fa-fw me-2"></i>My Bookings</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" href="/review/reviews"><i class="bi bi-pencil fa-fw me-2"></i>My Reviews</a>
									</li>
									
									<li class="nav-item">
										<a class="nav-link text-danger bg-danger-soft-hover" href="/customer/logout.do"><i class="fas fa-sign-out-alt fa-fw me-2"></i>Sign Out</a>
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
			<div class="col-lg-8 col-xl-9">

				<!-- Offcanvas menu button -->
				<div class="d-grid mb-0 d-lg-none w-100">
					<button class="btn btn-primary mb-4" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasSidebar" aria-controls="offcanvasSidebar">
						<i class="fas fa-sliders-h"></i> Menu
					</button>
				</div>

				<div class="vstack gap-4">
					
					<!-- Personal info START -->
					<div class="card border">
						<!-- Card header -->
						<div class="card-header border-bottom">
							<h4 class="card-header-title">Personal Information</h4>
						</div>

						<!-- Card body START -->
						<div class="card-body">
							<!-- Form START -->
							<form class="row g-3" name="frm" id="frm" action ="update.do" method="post">
							
								<!-- Profile photo -->
								<div class="col-12">
									
									<div class="d-flex align-items-center">
										<label class="position-relative me-4" for="uploadfile-1" title="Replace this pic">
											<!-- Avatar place holder -->
											<span class="avatar avatar-xl">
												<img id="uploadfile-1-preview" class="avatar-img rounded-circle border border-white border-3 shadow" src="/images/avatar/01-1.jpg" alt="">
											</span>
										</label>
										
									</div>
								</div>

								<!-- Name -->
								<div class="col-m<d-6">
								
									<label class="form-label">Full Name<span class="text-danger">*</span></label>
									<input type="hidden" class="form-control" name="customer_id" value="${vo.customer_id}">
									<input type="text" class="form-control" name="customer_name" value="${vo.customer_name}" readonly> 
								</div> 
								<!-- Email -->
								<div class="col-md-6">
									<label class="form-label">Email address<span class="text-danger">*</span></label>
									<input type="email"  name="customer_email" class="form-control" value="${vo.customer_email}" readonly>
								</div>

								<!-- Mobile -->
								<div class="col-md-6">
									<label class="form-label">Mobile number<span class="text-danger">*</span></label>
									<input type="text" class="form-control" name="customer_tel" value="${vo.customer_tel}" placeholder="Enter your mobile number">
								</div>

								<!-- Address -->
								<div class="col-12">
									<label class="form-label">Address</label>
									<input type="text" class="form-control" name="customer_address" value="${vo.customer_address}" placeholder="Enter your address">
								</div>

								<!-- Button -->
								<div class="col-12 text-end">
				
									<a href="javascript:;"  onclick="goSave();" class="btn btn-primary mb-0">Save Changes</a>
									
								</div>
							</form>
							<!-- Form END -->
						</div>
						<!-- Card body END -->
					</div>
					<!-- Personal info END -->

				


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

<!-- Vendors -->
<script src="/vendor/aos/aos.js"></script>
<script src="/vendor/flatpickr/js/flatpickr.min.js"></script>
<script src="/vendor/choices/js/choices.min.js"></script>

<!-- ThemeFunctions -->
<script src="/js/functions.js"></script>
<!--footer-->
    
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>