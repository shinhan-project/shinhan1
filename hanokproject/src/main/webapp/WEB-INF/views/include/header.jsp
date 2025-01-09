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
			<a class="navbar-brand" href="/index.do">
				<img class="light-mode-item navbar-brand-item" src="/images/gojeuneoklogo.png" alt="logo">
			</a>
			<!-- Logo END -->
			
			<!-- Responsive navbar toggler -->
			<button class="navbar-toggler ms-auto mx-3 me-md-0 p-0 p-sm-2" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-animation">
					<span></span>
					<span></span>
					<span></span>
				</span>
			</button>

			<!-- Main navbar START -->
			<div class="navbar-collapse collapse" id="navbarCollapse">
				<ul class="navbar-nav navbar-nav-scroll">

					<!-- Nav item Listing -->
					<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" id="listingMenu"
							data-bs-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false">Our Hanoks</a>
							<ul class="dropdown-menu" aria-labelledby="listingMenu">


								<li><a class="dropdown-item" href="/hanok/hanok_list.do">
										Hotel List</a></li>

							</ul></li>

					<!-- Nav item Contact -->
					<li class="nav-item"> <a class="nav-link" href="/about.do">About Us</a></li>
				</ul>
			</div>
			<!-- Main navbar END -->

			<!-- Profile and Notification START -->
			<ul class="nav flex-row align-items-center list-unstyled ms-xl-auto">

				<!-- Notification dropdown START -->
				<li class="nav-item ms-0 ms-md-3 dropdown">


				<!-- Profile dropdown START -->
				<li class="nav-item ms-3 dropdown">
					<!-- Avatar -->
					<a class="avatar avatar-xs p-0" href="#" id="profileDropdown" role="button" data-bs-auto-close="outside" data-bs-display="static" data-bs-toggle="dropdown" aria-expanded="false">
						<img class="avatar-img rounded-circle" src="/images/avatar/01-1.jpg" alt="avatar">
					</a>

					<!-- Profile dropdown START -->
					<ul class="dropdown-menu dropdown-animation dropdown-menu-end shadow pt-3" aria-labelledby="profileDropdown">
						<!-- Profile info -->
						<li class="px-3 mb-3">
							<div class="d-flex align-items-center">
								<!-- Avatar -->
								<div class="avatar me-3">
									<img class="avatar-img rounded-circle shadow" src="/images/avatar/01-1.jpg" alt="avatar">
								</div>
								<div>
									<a class="h6 mt-2 mt-sm-0" href="#">${vo.customer_name}</a>
									<p class="small m-0">${vo.customer_email}</p>
								</div>
							</div>
						</li>

						<!-- Links -->
						<li> <hr class="dropdown-divider"></li>
				
						<li><a class="dropdown-item" href="/customer/profile.do"><i class="bi bi-gear fa-fw me-2"></i>My Page</a></li>
					
						<li><a class="dropdown-item bg-danger-soft-hover" href="/customer/logout.do"><i class="bi bi-power fa-fw me-2"></i>Log-Out</a></li>
						<li> <hr class="dropdown-divider"></li>

						
					</ul>
					<!-- Profile dropdown END -->
				</li>
				<!-- Profile dropdown END -->

				
			</ul>
			<!-- Profile and Notification START -->

		</div>
	</nav>
	<!-- Logo Nav END -->
</header>
<!-- Header END -->
</c:if>


<!-- 로그아웃 상태 -->

<c:if test="${empty loginInfo}">
<!-- Header START -->
<header class="navbar-light header-sticky">
	<!-- Logo Nav START -->
	<nav class="navbar navbar-expand-xl">
		<div class="container">
			<!-- Logo START -->
			<a class="navbar-brand" href="/index.do">
				<img class="light-mode-item navbar-brand-item" src="/images/gojeuneoklogo.png" alt="logo">
			</a>
			<!-- Logo END -->
			
			<!-- Responsive navbar toggler -->
			<button class="navbar-toggler ms-auto mx-3 me-md-0 p-0 p-sm-2" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-animation">
					<span></span>
					<span></span>
					<span></span>
				</span>
			</button>

			<!-- Main navbar START -->
			<div class="navbar-collapse collapse" id="navbarCollapse">
				<ul class="navbar-nav navbar-nav-scroll">

					<!-- Nav item Listing -->
					<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" id="listingMenu"
							data-bs-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false">Our Hanoks</a>
							<ul class="dropdown-menu" aria-labelledby="listingMenu">


								<li><a class="dropdown-item" href="/hanok/hanok_list.do">
										Hotel List</a></li>

							</ul></li>

					<!-- Nav item Contact -->
					<li class="nav-item"> <a class="nav-link" href="/about.do"> About Us </a></li>
				</ul>
			</div>
			<!-- Main navbar END -->

			<!-- Profile and Notification START -->
			<ul class="nav flex-row align-items-center list-unstyled ms-xl-auto">

				<!-- Notification dropdown START -->
				<li class="nav-item ms-0 ms-md-3 dropdown">


				<!-- Profile dropdown START -->
				<li class="nav-item ms-3 dropdown">
					<!-- Avatar -->
					<a class="avatar avatar-xs p-0" href="#" id="profileDropdown" role="button" data-bs-auto-close="outside" data-bs-display="static" data-bs-toggle="dropdown" aria-expanded="false">
						<img class="avatar-img rounded-circle" src="/images/avatar/01-1.jpg" alt="avatar">
					</a>

					<!-- Profile dropdown START -->
					<ul class="dropdown-menu dropdown-animation dropdown-menu-end shadow pt-3" aria-labelledby="profileDropdown">
						<!-- Profile info -->
						<li class="px-3 mb-3">
							<div class="d-flex align-items-center">
								<!-- Avatar -->
								<div class="avatar me-3">
									<img class="avatar-img rounded-circle shadow" src="/images/avatar/01-1.jpg" alt="avatar">
								</div>
								<div>
									<a class="h6 mt-2 mt-sm-0" href="#">${vo.customer_name}</a>
									<p class="small m-0">${vo.customer_email}</p>
								</div>
							</div>
						</li>

						<!-- Links -->
						<li> <hr class="dropdown-divider"></li>
				
						<li><a class="dropdown-item" href="/customer/regist.do"><i class="bi bi-heart"></i> Join-Us </a></li>
					
						<li><a class="dropdown-item bg-danger-soft-hover" href="/customer/login.do"><i class="bi bi-power fa-fw me-2"></i>Log-in </a></li>
						<li> <hr class="dropdown-divider"></li>

						
					</ul>
					<!-- Profile dropdown END -->
				</li>
				<!-- Profile dropdown END -->

				
			</ul>
			<!-- Profile and Notification START -->

		</div>
	</nav>
	<!-- Logo Nav END -->
</header>
<!-- Header END -->
</c:if>



