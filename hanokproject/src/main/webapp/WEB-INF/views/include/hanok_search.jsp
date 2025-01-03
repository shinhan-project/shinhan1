<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search</title>
<!-- Meta Tags -->
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="author" content="Webestica.com">
<meta name="description" content="Booking - Multipurpose Online Booking Theme">
<!-- Google Font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;700&family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<!-- Plugins CSS -->
<link rel="stylesheet" type="text/css" href="/vendor/font-awesome/css/all.min.css">
<link rel="stylesheet" type="text/css" href="/vendor/bootstrap-icons/bootstrap-icons.css">
<link rel="stylesheet" type="text/css" href="/vendor/glightbox/css/glightbox.css">
<link rel="stylesheet" type="text/css" href="/vendor/flatpickr/css/flatpickr.min.css">
<link rel="stylesheet" type="text/css" href="/vendor/choices/css/choices.min.css">
<link rel="stylesheet" type="text/css" href="/vendor/tiny-slider/tiny-slider.css">

<!-- Theme CSS -->
<link rel="stylesheet" type="text/css" href="/css/style.css">
</head>
<body>
	<form method="get" action="/hanok/hanok_list.do">
	    <!-- =======================
Search START -->
<section class="py-3 py-sm-0">
	<div class="container">
		<!-- Offcanvas button for search -->
		<button class="btn btn-primary d-sm-none w-100 mb-0" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasEditsearch" aria-controls="offcanvasEditsearch"><i class="bi bi-pencil-square me-2"></i>Edit Search</button>

		<!-- Search with offcanvas START -->
		<div class="offcanvas-sm offcanvas-top" tabindex="-1" id="offcanvasEditsearch" aria-labelledby="offcanvasEditsearchLabel">
			<div class="offcanvas-header">
				<h5 class="offcanvas-title" id="offcanvasEditsearchLabel">Edit search</h5>
				<button type="button" class="btn-close" data-bs-dismiss="offcanvas" data-bs-target="#offcanvasEditsearch" aria-label="Close"></button>
			</div>
			<div class="offcanvas-body p-2">
				<div class="bg-light p-4 rounded w-100">
					<form class="row g-4">
						<!-- Location -->
						<div class="col-md-6 col-lg-4">
							<div class="form-size-lg form-fs-md">
								<!-- input -->
								<label class="form-label">Location</label>
								<input type="text" name="location" class="form-select js-choice" data-search-enabled="true" placeholder="지역을 입력하시오.">
							</div>
						</div>

						<!-- Check in -->
						<div class="col-md-6 col-lg-3">
							<!-- Date input -->
							<div class="form-fs-md">
								<label class="form-label">Check in</label>
								<input type="date" class="form-control form-control-lg flatpickr" data-mode="range" placeholder="날짜를 고르시오.">
								<label class="form-label">Check out</label>
								<input type="date" class="form-control form-control-lg flatpickr" data-mode="range" placeholder="날짜를 고르시오.">
							</div>
						</div>

						<!-- Guest -->
						<div class="col-md-6 col-lg-3">
							<div class="form-fs-md">
								<!-- Dropdown input -->
								<div class="w-100">
									<label class="form-label">Guests</label>
									<div class="dropdown guest-selector me-2">
										<input type="text" name="capacity" class="form-guest-selector form-control form-control-lg selection-result" placeholder="인원 수를 입력하시오." id="dropdownguest" data-bs-auto-close="outside" data-bs-toggle="dropdown">
									</div>
								</div>
							</div>
						</div>

						<!-- Button -->
						<div class="col-md-6 col-lg-2 mt-md-auto">
							<a class="btn btn-lg btn-primary w-100 mb-0" href="#"><i class="bi bi-search fa-fw"></i>Search</a>
						</div>

					</form>
				</div>
			</div>
		</div>
		<!-- Search with offcanvas END -->
	</div>
</section>
<!-- =======================
Search END -->
    </form>
<!-- Back to top -->
<div class="back-top"></div>

<!-- Bootstrap JS -->
<script src="/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>


<!-- ThemeFunctions -->
<script src="/js/functions.js"></script>
</body>
</html>