<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Header START -->
<header class="navbar-light header-sticky">
	<!-- Logo Nav START -->
	<nav class="navbar navbar-expand-xl">
		<div class="container">
			<!-- Logo START -->
			<a class="navbar-brand" href="/index.do"> <img
				class="light-mode-item navbar-brand-item"
				src="/images/gojeuneoklogo.png" alt="logo">
			</a>
			<!-- Logo END -->

			<!-- Responsive navbar toggler -->
			<button class="navbar-toggler ms-auto ms-sm-0 p-0 p-sm-2"
				type="button" data-bs-toggle="collapse"
				data-bs-target="#navbarCollapse" aria-controls="navbarCollapse"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-animation"> <span></span> <span></span>
					<span></span>
				</span> <span class="d-none d-sm-inline-block small">Menu</span>
			</button>

			<!-- Responsive category toggler -->
			<button class="navbar-toggler ms-sm-auto mx-3 me-md-0 p-0 p-sm-2"
				type="button" data-bs-toggle="collapse"
				data-bs-target="#navbarCategoryCollapse"
				aria-controls="navbarCategoryCollapse" aria-expanded="false"
				aria-label="Toggle navigation">
				<i class="bi bi-grid-3x3-gap-fill fa-fw"></i><span
					class="d-none d-sm-inline-block small">Category</span>
			</button>

			<!-- Main navbar START -->
			<div class="navbar-collapse collapse" id="navbarCollapse">
				<ul class="navbar-nav navbar-nav-scroll me-auto">

					<!-- Nav item Listing -->
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="listingMenu"
						data-bs-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false">Our Hanoks</a>
						<ul class="dropdown-menu" aria-labelledby="listingMenu">


							<li><a class="dropdown-item" href="/hanok/hanok_list.jsp">
									Hotel List</a></li>
							
						</ul></li>

					<!-- Nav item Pages -->
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="pagesMenu"
						data-bs-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false">Contact Us</a>
						<ul class="dropdown-menu" aria-labelledby="pagesMenu">

							<li><a class="dropdown-item" href="#">FAQs</a></li>
							<li><a class="dropdown-item" href="#">Notice</a></li>

						</ul></li>

					<!-- Nav item Account -->
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="accounntMenu"
						data-bs-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false">About</a>
						<ul class="dropdown-menu" aria-labelledby="accounntMenu">
							<!-- Dropdown submenu -->
							<li class="dropdown-submenu dropend"><a href="/about.do">AboutUs
									</a></li>
						</ul></li>

					<!-- link-->
			</div>
			<!-- Main navbar END -->



			<!-- Profile and Notification START -->
			<ul class="nav flex-row align-items-center list-unstyled ms-xl-auto">

				<!-- Notification dropdown START -->
				<li class="nav-item dropdown ms-0 ms-md-3">
					<!-- Notification button --> <a
					class="nav-notification btn btn-light p-0 mb-0" href="#"
					role="button" data-bs-toggle="dropdown" aria-expanded="false"
					data-bs-auto-close="outside"> <i class="bi bi-bell fa-fw"></i>
				</a> <!-- Notification dote --> <span
					class="notif-badge animation-blink"></span> <!-- Notification dropdown menu START -->
					<div
						class="dropdown-menu dropdown-animation dropdown-menu-end dropdown-menu-size-md shadow-lg p-0">
						<div class="card bg-transparent">
							<!-- Card header -->
							<div
								class="card-header bg-transparent d-flex justify-content-between align-items-center border-bottom">
								<h6 class="m-0">
									Notifications <span
										class="badge bg-danger bg-opacity-10 text-danger ms-2">4
										new</span>
								</h6>
								<a class="small" href="#">Clear all</a>
							</div>

							<!-- Card body START -->
							<div class="card-body p-0">
								<ul class="list-group list-group-flush list-unstyled p-2">
									<!-- Notification item -->
									<li><a href="#"
										class="list-group-item list-group-item-action rounded notif-unread border-0 mb-1 p-3">
											<h6 class="mb-2">New! Booking flights from New York ✈️</h6>
											<p class="mb-0 small">Find the flexible ticket on flights
												around the world. Start searching today</p> <span>Wednesday</span>
									</a></li>
									<!-- Notification item -->
									<li><a href="#"
										class="list-group-item list-group-item-action rounded border-0 mb-1 p-3">
											<h6 class="mb-2">Sunshine saving are here 🌞 save 30% or
												more on a stay</h6> <span>15 Nov 2022</span>
									</a></li>
								</ul>
							</div>
							<!-- Card body END -->

							<!-- Card footer -->
							<div class="card-footer bg-transparent text-center border-top">
								<a href="#" class="btn btn-sm btn-link mb-0 p-0">See all
									incoming activity</a>
							</div>
						</div>
					</div> <!-- Notification dropdown menu END -->
				</li>
				<!-- Notification dropdown END -->



			</ul>
			<!-- Profile and Notification START -->

			<div class="header">
				<div class="size">
					<div>
						<a href="index.do"></a>
					</div>
					<div class="login">
						<!-- 로그인이 안됐을 때 -->
						<c:if test="${empty loginInfo }">

							<!-- Profile dropdown START -->
							<li class="nav-item ms-3 dropdown">
								<!-- Avatar --> 
								<a class="avatar avatar-sm p-0" href="#"
								id="profileDropdown" role="button" data-bs-auto-close="outside"
								data-bs-display="static" data-bs-toggle="dropdown"
								aria-expanded="false"> <img class="avatar-img rounded-2"
									src="/images/avatar/01.jpg" alt="avatar"></a>

								<ul
									class="dropdown-menu dropdown-animation dropdown-menu-end shadow pt-3"
									aria-labelledby="profileDropdown">


									<!-- Links -->
									<li>
										<hr class="dropdown-divider">
									</li>
									<li><a class="dropdown-item" href="/customer/login.do"><i
											class="bi bi-bookmark-check fa-fw me-2"></i>Login</a></li>
									<li><a class="dropdown-item" href="/customer/regist.do"><i
											class="bi bi-heart fa-fw me-2"></i>Join-us</a></li>
									<li>
										<hr class="dropdown-divider">
									</li>

								</ul>
							</li>
							<!-- Profile dropdown END -->


						</c:if>
						<!-- 로그인이 됐을 때 -->
						<c:if test="${!empty loginInfo }">
							<!-- Profile dropdown START -->
							<li class="nav-item ms-3 dropdown">
								<!-- Avatar -->
								<a class="avatar avatar-sm p-0" href="#"
								id="profileDropdown" role="button" data-bs-auto-close="outside"
								data-bs-display="static" data-bs-toggle="dropdown"
								aria-expanded="false"> <img class="avatar-img rounded-2"
									src="/images/avatar/01.jpg" alt="avatar">
							</a>

								<ul
									class="dropdown-menu dropdown-animation dropdown-menu-end shadow pt-3"
									aria-labelledby="profileDropdown">


									<!-- Links -->
									<li>
										<hr class="dropdown-divider">
									</li>
									<li><a class="dropdown-item" href="/customer/logout.do"><i
											class="bi bi-bookmark-check fa-fw me-2"></i>Logout</a></li>
									<li><a class="dropdown-item" href="/customer/profile.do"><i
											class="bi bi-heart fa-fw me-2"></i>My page</a></li>
									<li>
										<hr class="dropdown-divider">
									</li>

								</ul>
							</li>
							<!-- Profile dropdown END -->

						</c:if>
					</div>
				</div>
			</div>

		</div>


	</nav>
	<!-- Logo Nav END -->
</header>
<!-- Header END -->
