<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>Owner DashBoard Page</title>

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
	href="/vendor/apexcharts/css/apexcharts.css">
<link rel="stylesheet" type="text/css"
	href="/vendor/choices/css/choices.min.css">

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
						<a href="add-listing.html"
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
										href="/review/owner/${ownerloginInfo.owner_id}"><i class="bi bi-star fa-fw me-1"></i>Reviews</a></li>
									
									<li class="nav-item"> <a class="nav-link" href="/owner/owner_listings.do"><i class="bi bi-journals fa-fw me-1"></i>Listings</a> </li>
									<li class="nav-item"> <a class="nav-link active" href="owner_authorization.do"><i class="bi bi-bookmark-heart fa-fw me-1"></i>Authorization lists</a> </li>
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





	
<!-- =======================
Content START -->
<section class="pt-0">
	<div class="container vstack gap-4">
		<!-- Title START -->
		<div class="row">
			<div class="col-12">
				<h1 class="fs-4 mb-0"><i class="bi bi-bookmark-heart fa-fw me-1"></i>Outstanding Authorization</h1>
			</div>
		</div>
		<!-- Title END -->

		<!-- Booking table START -->
		<div class="row">
			<div class="col-12">
				<div class="card border">
					<!-- Card header START -->
					<div class="card-header border-bottom">
						<h5 class="card-header-title">Outstanding Authorization<span class="badge bg-primary bg-opacity-10 text-primary ms-2">total lists</span></h5>
					</div>
					<!-- Card header END -->

					<!-- Card body START -->
					<div class="card-body">
						<!-- Search and select START -->
						<div class="row g-3 align-items-center justify-content-between mb-3">
							
							

							<!-- Select option 마지막에 시간 되면 하기-->
							<div class="col-md-3">
								<!-- Short by filter -->
								<form>
									<select class="form-select js-choice" aria-label=".form-select-sm">
										<option value="">Sort by</option>
										<option>Free</option>
										<option>Newest</option>
										<option>Oldest</option>
									</select>
								</form>
							</div>
						</div>
						<!-- Search and select END -->

						<!-- Hotel room list START -->
						<div class="table-responsive border-0">
							<table class="table align-middle p-4 mb-0 table-hover table-shrink">
								<!-- Table head -->
								<!-- 이부분에 어떤거 넣을지 적고 믿에 포이치로 반복문 넣기 -->
								<thead class="table-light">
									<tr>
										<th scope="col" class="border-0 rounded-start">hanok_id</th>
										<th scope="col" class="border-0">hanok_name</th>
										<th scope="col" class="border-0">hanok_address</th>
										<th scope="col" class="border-0">Status</th>
										
									</tr>
								</thead>

								<!-- Table body START -->
								<tbody class="border-top-0">
									<!-- Table item -->
									<!-- 이부분에 어떤거 넣을지 적고 믿에 포이치로 반복문 넣기 -->
									<c:forEach var="author" items="${author }">
									<tr>
										<td> <h6 class="mb-0">${author.hanok_id}</h6> </td>
										<td> <h6 class="mb-0">${author.hanok_name}</a></h6> </td>
										<td> ${author.hanok_address} </td>
										<%-- <td> <h6 class="mb-0 fw-light">${author.status}</h6> </td> --%>
										<td> <div class="badge ${author.status == 0 ? 'text-bg-warning' : (author.status == 1 ? 'text-bg-danger' : 'text-bg-success')}">
										 <c:if test="${author.status == 0}">
										 	승인 요청
										 </c:if>
										 <c:if test="${author.status == 1}">
										 	승인 거절
										 </c:if>
										  <c:if test="${author.status == 2}">
										 	승인 완료
										 </c:if>
										</div> </td>
										
									</tr>
									</c:forEach>
								</tbody>
								<!-- Table body END -->
							</table>
						</div>
						<!-- Hotel room list END -->
					</div>
					<!-- Card body END -->

				</div>
			</div>
		 </div> 
		<!-- Booking table END -->
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
<script src="/vendor/apexcharts/js/apexcharts.min.js"></script>
<script src="/vendor/choices/js/choices.min.js"></script>

<!-- ThemeFunctions -->
<script src="/js/functions.js"></script>

</body>
</html>
