<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Owner_Profile</title>

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
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;700&family=Poppins:wght@400;500;700&display=swap">

<!-- Plugins CSS -->
<link rel="stylesheet" type="text/css"
	href="/vendor/font-awesome/css/all.min.css">
<link rel="stylesheet" type="text/css"
	href="/vendor/bootstrap-icons/bootstrap-icons.css">
<link rel="stylesheet" type="text/css"
	href="/vendor/flatpickr/css/flatpickr.min.css">
<link rel="stylesheet" type="text/css"
	href="/vendor/choices/css/choices.min.css">

<!-- Theme CSS -->
<link rel="stylesheet" type="text/css" href="/css/style.css">

</head>

<body>

<%@ include file="/WEB-INF/views/include/owner_header.jsp" %>

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

									<li class="nav-item"><a class="nav-link"
										href="/owner/owner_dash.do"><i
											class="bi bi-house-door fa-fw me-1"></i>Dashboard</a></li>
									<!-- Review 목록 페이지 -->
									<li class="nav-item"><a class="nav-link "
										href="/review/owner"><i class="bi bi-star fa-fw me-1"></i>Reviews</a></li>
									
									<li class="nav-item"> <a class="nav-link" href="/owner/owner_listings.do"><i class="bi bi-journals fa-fw me-1"></i>Listings</a> </li>
									<li class="nav-item"> <a class="nav-link" href="owner_authorization.do"><i class="bi bi-bookmark-heart fa-fw me-1"></i>Authorization lists</a> </li>
									<li><a class="nav-link active" href="/owner/owner_profile.do"><i class="bi bi-gear fa-fw me-1"></i>profile</a></li>

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


		<!-- =======================
Content START -->
		<section class="pt-0">
			<div class="container vstack gap-4">
				<!-- Title START -->
				<div class="row">
					<div class="col-12">
						<h1 class="fs-4 mb-0">
							<i class="bi bi-gear fa-fw me-1"></i>Settings
						</h1>
					</div>
				</div>
				<!-- Title END -->

				<!-- Tabs START -->
				<div class="row g-4">
					<div class="col-12">
						<div class="bg-light pb-0 px-2 px-lg-0 rounded-top">
							<ul
								class="nav nav-tabs nav-bottom-line nav-responsive border-0 nav-justified"
								role="tablist">
								<li class="nav-item"><a class="nav-link mb-0 active"
									data-bs-toggle="tab" href="#tab-1"><i
										class="fas fa-cog fa-fw me-2"></i>Edit Profile</a></li>
							</ul>
						</div>
					</div>
				</div>
				<!-- Tabs END -->

				<!--  Content START -->
				<div class="row g-4">
					<div class="col-12">
						<div class="tab-content">
							<!-- Tab content 1 START -->
							<div class="tab-pane show active" id="tab-1">
								<div class="row g-4">
									<!-- Edit profile START -->
									<form action ="update.do" method="post">
									<div class="col-12">
										<div class="card border">
											<div class="card-header border-bottom">
												<h5 class="card-header-title">Edit Profile</h5>
											</div>
											
											
											<div class="card-body">
											
												<!-- Full name -->
												<div class="mb-3">
													<label class="form-label">Name</label>
													<input type="text" class="form-control" name="owner_name" value="${vo.owner_name}"
														readonly>
												</div>
												<!-- Profile picture -->
												<div class="mb-3">
													<label class="form-label">Profile picture</label>
													<!-- Avatar upload START -->
													<div class="d-flex align-items-center">
														<label class="position-relative me-4" for="uploadfile-1"
															title="Replace this pic"> <!-- Avatar place holder -->
															<span class="avatar avatar-xl"> <img
																id="uploadfile-1-preview"
																class="avatar-img rounded-circle border border-white border-3 shadow"
																src="/images/avatar/01-1.jpg" alt="">
														</span>
														</label>
														
													</div>
													<!-- Avatar upload END -->
												</div>
												<!--  id -->
												<div class="mb-3">
													<label class="form-label">ID</label> <input
														type="text" class="form-control" name="owner_id" value="${vo.owner_id}"
														readonly>
												</div>
												<!-- Email id -->
												<div class="mb-3">
													<label class="form-label">Email id</label> <input
														type="email" class="form-control" name="owner_email" value="${vo.owner_email}"
														readonly>
												</div>
												<!-- Mobile number -->
												<div class="mb-3">
													<label class="form-label">Mobile number</label> <input
														type="text" class="form-control" name="owner_tel" value="${vo.owner_tel}"
														placeholder="Enter your mobile number">
												</div>
												<!-- Location -->
												<div class="mb-3">
													<label class="form-label">Location</label> <input
														class="form-control" type="text" name="owner_address" value="${vo.owner_address}">
												</div>
												<div class="mb-3">
													<label class="form-label">BusinessNum</label> <input
														type="text" class="form-control" name="businessNum" value="${vo.businessNum}"
														placeholder="Enter your mobile number">
												</div>
												
												<!-- Save button -->
												<div class="d-flex justify-content-end mt-4">
	
													<button type="submit" class="btn btn-primary">Save change</button>
												</div>
												</form>
											</div>
										</div>
									</div>
									<!-- Edit profile END -->



								</div>
							</div>
							<!-- Tab content 1 END -->


						</div>
					</div>
				</div>
				<!-- Tabs Content END -->
			</div>
		</section>
		<!-- =======================
Content END -->

</main>
	<!-- **************** MAIN CONTENT END **************** -->

<%@ include file="/WEB-INF/views/include/footer.jsp" %>
	<!-- Back to top -->
	<div class="back-top"></div>

	<!-- Bootstrap JS -->
	<script src="/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

	<!-- Vendors -->
	<script src="/vendor/flatpickr/js/flatpickr.min.js"></script>
	<script src="/vendor/choices/js/choices.min.js"></script>

	<!-- ThemeFunctions -->
	<script src="/js/functions.js"></script>

</body>
</html>