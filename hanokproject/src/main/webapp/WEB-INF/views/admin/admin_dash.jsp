<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Admin DashBoard Page</title>

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
	
	
	

	<!-- **************** MAIN CONTENT START **************** -->
	<main>

		<!-- ======================= Menu item START -->
		
	
		<!-- =======================
Menu item END -->

		<!-- =======================
Content START -->
		<section class="pt-0">
			<div class="container vstack gap-4">
				<!-- Title START -->
				<div class="row">
					<div class="col-12">
						
					</div>
				</div>
				</div>
				</section>
				<!-- Title END -->

				<!-- =======================
Content START -->
<section class="pt-0">
	<div class="container vstack gap-4">
		<!-- Title START -->
		<div class="row">
			<div class="col-12">
			<h1 class="fs-4 mb-0">
							
						</h1>
				<h1 class="fs-4 mb-0"></h1>
			</div>
		</div>
		
<!-- =======================
Content START -->
<section class="pt-0">
	<div class="container vstack gap-4">
		<!-- Title START -->
		<div class="row">
			<div class="col-12">
				<h1 class="fs-4 mb-0"><i class="bi bi-journals fa-fw me-1"></i>Hanok Request Listings</h1>
			</div>
		</div>
		<!-- Title END -->

		<!-- Counter START -->
		<div class="row g-4">
			
			<!-- Request Status Counter -->
			<c:set var="status0Count" value="0" />
			<c:set var="status1Count" value="0" />
			<c:set var="status2Count" value="0" />

			<!-- Counting status occurrences -->
			<c:forEach var="request" items="${request}">
				<c:choose>
					<c:when test="${request.hanok_status == 0}">
						<c:set var="status0Count" value="${status0Count + 1}" />
					</c:when>
					<c:when test="${request.hanok_status == 1}">
						<c:set var="status1Count" value="${status1Count + 1}" />
					</c:when>
					<c:when test="${request.hanok_status == 2}">
						<c:set var="status2Count" value="${status2Count + 1}" />
					</c:when>
				</c:choose>
			</c:forEach>

			<!-- Status Display Cards -->
			<div class="col-md-6 col-xl-4">
				<div class="card card-body border p-4 h-100">
					<h6>Pending Approval </h6>
					<h2 class="text-warning">${status0Count}</h2>
					<p class="mb-2">Total</p>
				</div>
			</div>

			<div class="col-md-6 col-xl-4">
				<div class="card card-body border p-4 h-100">
					<h6>Approved </h6>
					<h2 class="text-success">${status2Count}</h2>
					<p class="mb-2">Total</p>
				</div>
			</div>

			<div class="col-md-6 col-xl-4">
				<div class="card card-body border p-4 h-100">
					<h6>Rejected</h6>
					<h2 class="text-danger">${status1Count}</h2>
					<p class="mb-2">Total</p>
				</div>
			</div>
		</div>
		<!-- Counter END -->
	</div>
</section>
<!-- =======================
Content END -->

		<!-- Title END -->

		<!-- Booking table START -->
		<div class="row">
			<div class="col-12">
				<div class="card border">
					<!-- Owner ID 개수를 세기 위한 변수 초기화 -->
					<c:set var="ownerCount" value="0" />

					<!-- 요청 리스트갯수 count -->
					<c:forEach var="request" items="${request}">
					    <!-- Owner ID 개수 증가 -->
					    <c:set var="ownerCount" value="${ownerCount + 1}" />
					</c:forEach>

					<!-- Card header START -->
					<div class="card-header border-bottom">
					    <h5 class="card-header-title">
					        Hanok Request Listings
					        <span class="badge bg-primary bg-opacity-10 text-primary ms-2">
					            ${ownerCount} Rooms
					        </span>
					    </h5>
					</div>
					<!-- Card header END -->

					<!-- Card body START -->
					<div class="card-body">
						

						<!-- Hotel room list START -->
						<div class="table-responsive border-0">
							<table class="table align-middle p-4 mb-0 table-hover table-shrink">
								<!-- Table head -->
								<thead class="table-light">
									<tr>
										<th scope="col" class="border-0 rounded-start">Owner Id</th>
										<th scope="col" class="border-0">Hanok Id</th>
										<th scope="col" class="border-0">Hanok Name</th>
										<th scope="col" class="border-0">Date</th>
										<th scope="col" class="border-0">Status</th>
										<th scope="col" class="border-0 rounded-end">Action</th>
									</tr>
								</thead>

								<!-- Table body START -->
								<tbody class="border-top-0">
									<!-- Table item -->
									<c:forEach var="request" items="${request}">
    <tr>
        <td> <h6 class="mb-0">${request.owner_id}</h6> </td>
        <td> <h6 class="mb-0">${request.hanok_id}</h6> </td>
        <td> ${request.hanok_name}</td>
        <td> <h6 class="mb-0 fw-light">${request.hanok_requestdate}</h6> </td>
        <td>
            <c:choose>
                <c:when test="${request.hanok_status == 0}">

                    <div class="badge text-bg-warning">대기</div>

                </c:when>

                <c:when test="${request.hanok_status == 1}">
                    <div class="badge text-bg-danger">거절</div>
                </c:when>

                <c:when test="${request.hanok_status == 2}">
                    <div class="badge text-bg-success">승인</div>
                </c:when>

                <c:otherwise>
                    <div class="badge text-bg-secondary">알 수 없음</div>
                </c:otherwise>
            </c:choose>
        </td>
        <td> <a href="/admin/hanokDetail.do?hanok_id=${request.hanok_id}" class="btn btn-sm btn-light mb-0">View</a> </td>
    </tr>
</c:forEach>

								</tbody>
								<!-- Table body END -->
							</table>
						</div>
						<!-- Hotel room list END -->
					</div>
					<!-- Card body END -->

					<!-- Card footer START -->
					<div class="card-footer pt-0">
						
					</div>
					<!-- Card footer END -->
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