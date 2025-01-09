<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<fmt:setLocale value="en" />
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
	<link rel="stylesheet" type="text/css" href="/vendor/dropzone/css/dropzone.css">

	<!-- Theme CSS -->
	<link rel="stylesheet" type="text/css" href="/css/style.css">
	
	<style>
  .wrap {
  height: 10vh;
  min-height: 30px;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
  gap: 32px;
}


.rating {
  float: none;
  width: 200px;
  display: flex;
}
.rating__input {
  display: none;
}
.rating__label {
  width: 40px;
  overflow: hidden;
  cursor: pointer;
}
.rating__label .star-icon {
  width: 40px;
  height: 40px;
  display: block;
  position: relative;
  left: 0;
  background-image: url("https://velog.velcdn.com/images/jellykelly/post/9957327f-f358-4c25-9989-5bb3dd5755d6/image.svg");
  background-repeat: no-repeat;
  background-size: 40px;
}
.rating__label .star-icon.filled {
  background-image: url(" https://velog.velcdn.com/images/jellykelly/post/10caf033-b0ef-4d58-804b-6e33395e4ea5/image.svg");
}

.rating.readonly .star-icon {
  opacity: 0.7;
  cursor: default;
}

.fixed-height {
    min-height: 120px; /* 원하는 높이로 조절 */
}

.fixed-image {
    width: 300px;  /* 너비 고정 */
    height: 200px; /* 높이 고정 */
    object-fit: cover; /* 비율 유지하면서 크기 맞춤 */
}
</style>
	
	
	
	

</head>

<body>

<%@ include file="/WEB-INF/views/include/header.jsp" %>

<!-- **************** MAIN CONTENT START **************** -->
<main>
	
<!-- =======================
Page Banner START -->
<section class="pt-4 pt-md-5 pb-0">
	<div class="container">
		<div class="row">
			<div class="col-12 mx-auto text-center">
				<h1 class="fs-2 mb-2">Add Review</h1>
				<p class="mb-0">Please write a review of your stay.</p>
			</div>
		</div>
	</div>
</section>
<!-- =======================
Page Banner END -->

<!-- =======================
Main content START -->
<section>
	<div class="container">
		<div class="row">
			<div class="col-lg-10 mx-auto">
				<form class="vstack gap-4" id="reviewForm" action="/review/add" method="POST">
					<input type="hidden" name="reservations_id" value="${reservation.reservations_id}">
					<input type="hidden" name="customer_id" value="${reservation.customer_id}">
					<input type="hidden" name="hanok_id" value="${reservation.hanok_id}">
					<input type="hidden" name="room_id" value="${reservation.room_id}">
					<!-- Owner Detail START -->
					<div class="card shadow">
						<!-- Card header -->
						<div class="card-header border-bottom">
							<h5 class="mb-0">Reservation Info</h5>
						</div>

						<!-- Card body -->
						<div class="card-body">
							<div class="row g-3">
								
								
								<!-- Card body START -->
					<div class="card-body p-0">
						
		
						<!-- Tabs content START -->
						<div class="tab-content p-2 p-sm-4" id="nav-tabContent">
							<!-- Tab content item START -->
							<div class="tab-pane fade show active" id="tab-1">
								
                <!-- Card item START -->
                	<h6 class="card-title"><a href="#">Reservation No. ${reservation.hanok_name}</a></h5>
                	<div class="card mb-4">
								<div class="row align-items-center">
									<!-- Image -->
									<div class="col-md-5">
								<img src="/images/hanoks/${reservation.hanok_imgName}" class="card-img  img-fluid rounded-2" alt="Card image"   >
							</div>
									
									<!-- Card Body -->
									<div class="col-sm-6 col-md-7">
										<div class="card-body pt-3 pt-sm-0 p-0">
											<!-- Title -->
											<h5 class="card-title"><i class="bi bi-geo-alt me-2"></i><a href="#"> ${reservation.hanok_name}</a></h5>
											<p style="margin-left: 20px;">${reservation.room_name}</p>
											
										</div>
									</div>

								</div>
							</div>
							<!-- Card list END -->
							
							<!-- Information START -->
							<div class="row g-4">
								<!-- Item -->
								
								<!-- Item -->
								<div class="col-lg-6">
									<div class="bg-light py-3 px-4 rounded-3 fixed-height text-center">
										<h6 class="fw-light small mb-1">Check-in</h6>
										<h5 class="mb-1">
			<fmt:formatDate value="${reservation.checkin}" pattern="yyyy MMMM dd"  />
		</h5>
		<small>
			<i class="bi bi-alarm me-1"></i>
			<fmt:formatDate value="${reservation.checkin}" pattern="hh:mm a" />
		</small>
									</div>
								</div>

								<!-- Item -->
								<div class="col-lg-6">
									<div class="bg-light py-3 px-4 rounded-3 fixed-height text-center">
										<h6 class="fw-light small mb-1">Check-out</h6>
										<h5 class="mb-1">
			<fmt:formatDate value="${reservation.checkout}" pattern="yyyy MMMM dd"  />
		</h5>
		<small>
			<i class="bi bi-alarm me-1"></i>
			<fmt:formatDate value="${reservation.checkout}" pattern="hh:mm a" />
		</small>
									</div>
								</div>
							</div>
							<!-- Information END -->

							
					
									</div>
									<!-- Card body -->
								</div>
								<!-- Card item END -->
                             </div>
							
							</div>
						</div>
					</div>
					<!-- Owner Detail END -->

					<!-- Reservation Detail START -->
					<div class="card shadow">
						<!-- Card header -->
						<div class="card-header border-bottom">
							<h5 class="mb-0">How was your stay?</h5>
						</div>

						<!-- Review body -->
						<div class="card-body">
							<div class="row g-3">
								<div class="wrap">
 
    <div class="rating">
        
        <label class="rating__label rating__label--full" for="star1">
            <input type="radio" id="star1" class="rating__input" name="rating" value="1">
            <span class="star-icon"></span>
        </label>
       
        <label class="rating__label rating__label--full" for="star2">
            <input type="radio" id="star2" class="rating__input" name="rating" value="2">
            <span class="star-icon"></span>
        </label>
        <label class="rating__label rating__label--full" for="star3">
            <input type="radio" id="star3" class="rating__input" name="rating" value="3">
            <span class="star-icon"></span>
        </label>
       
        <label class="rating__label rating__label--full" for="star4">
            <input type="radio" id="star4" class="rating__input" name="rating" value="4">
            <span class="star-icon"></span>
        </label>
       
        <label class="rating__label rating__label--full" for="star5">
            <input type="radio" id="star5" class="rating__input" name="rating" value="5">
            <span class="star-icon"></span>
        </label>
    </div>
</div>
								
								<div class="col-12">
									<textarea class="form-control" name="review_content" rows="10" placeholder="Please write your review"></textarea>
								</div>
								
												
							</div>
						</div>
					</div>
					<!-- Detail END -->


					<!-- Button -->
					<div class="text-end">
						<button type="submit" class="btn btn-primary mb-0">Add Review</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</section>
<!-- =======================
Main content END -->

</main>
<!-- **************** MAIN CONTENT END **************** -->

<!-- =======================
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
<!-- =======================
Footer END -->

<!-- Back to top -->
<div class="back-top"></div>

<!-- Bootstrap JS -->
<script src="/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

<!-- Vendors -->
<script src="/vendor/choices/js/choices.min.js"></script>
<script src="/vendor/dropzone/js/dropzone.js"></script>

<!-- ThemeFunctions -->
<script src="/js/functions.js"></script>

<script src="/js/rating.js"></script>




</body>
</html>