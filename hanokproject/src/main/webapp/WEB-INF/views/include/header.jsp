<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>




<!-- 로그인이 됐을 때 여기서 바꾸기-->

<c:if test="${!empty loginInfo}">

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


								<li><a class="dropdown-item" href="/hanok/hanok_list.do">
										Hotel List</a></li>

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
					</ul>
				</div>
				<!-- Main navbar END -->

				<div class="header">
					<div class="size">
						<div>
							<a href="index.do"></a>
						</div>
						<div class="login">

							<!-- Profile dropdown START -->
							<li class="nav-item ms-3 dropdown">
								<!-- Avatar --> <a class="avatar avatar-sm p-0" href="#"
								id="profileDropdown" role="button" data-bs-auto-close="outside"
								data-bs-display="static" data-bs-toggle="dropdown"
								aria-expanded="false"> <img class="avatar-img rounded-2"
									src="/images/avatar/01-1.jpg" alt="avatar">
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

						</div>
					</div>
				</div>
		</nav>
		<!-- Logo Nav END -->
	</header>
</c:if>






<!-- 로그인이 됐을 때 여기서 바꾸기-->

<c:if test="${empty loginInfo}">

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


								<li><a class="dropdown-item" href="/hanok/hanok_list.do">
										Hotel List</a></li>

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



				<div class="header">
					<div class="size">
						<div>
							<a href="index.do"></a>
						</div>
						<div class="login">

							<!-- Profile dropdown START -->
							<li class="nav-item ms-3 dropdown">
								<!-- Avatar --> <a class="avatar avatar-sm p-0" href="#"
								id="profileDropdown" role="button" data-bs-auto-close="outside"
								data-bs-display="static" data-bs-toggle="dropdown"
								aria-expanded="false"> <img class="avatar-img rounded-2"
									src="/images/avatar/01-1.jpg" alt="avatar">
							</a>

								<ul
									class="dropdown-menu dropdown-animation dropdown-menu-end shadow pt-3"
									aria-labelledby="profileDropdown">


									<!-- Links -->
									<li>
										<hr class="dropdown-divider">
									</li>
									<li><a class="dropdown-item" href="/customer/login.do"><i
											class="bi bi-bookmark-check fa-fw me-2"></i>Log in</a></li>
									<li><a class="dropdown-item" href="/customer/regist.do"><i
											class="bi bi-heart fa-fw me-2"></i>Regist</a></li>
									<li>
										<hr class="dropdown-divider">
									</li>

								</ul>
							</li>
							<!-- Profile dropdown END -->


						</div>
		</nav>
		<!-- Logo Nav END -->
	</header>
</c:if>

