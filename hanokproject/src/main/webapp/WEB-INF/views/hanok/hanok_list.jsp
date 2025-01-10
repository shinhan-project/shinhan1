<!-- tour-grid.html 참고 (민규) -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색페이지</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- Google Font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;700&family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<!-- Plugins CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="/vendor/font-awesome/css/all.min.css">
<link rel="stylesheet" type="text/css" href="/vendor/bootstrap-icons/bootstrap-icons.css">
<link rel="stylesheet" type="text/css" href="/vendor/flatpickr/css/flatpickr.min.css">
<link rel="stylesheet" type="text/css" href="/vendor/choices/css/choices.min.css">
<link rel="stylesheet" type="text/css" href="/vendor/nouislider/nouislider.css">

<!-- Theme CSS -->
<link rel="stylesheet" type="text/css" href="/css/style.css">

	<style>
	    #sep {
	        margin-bottom: 20px;
	    }
	</style>
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


        window.addEventListener('DOMContentLoaded', () => {
    	    // 현재 날짜를 "YYYY-MM-DD" 형식으로 가져오는 함수
    	    const today = new Date().toISOString().split("T")[0];
    	
    	    // 입력 필드 요소 가져오기
    	    const checkInInput = document.getElementById("checkIn");
    	    const checkOutInput = document.getElementById("checkOut");
    	
    	    checkInInput.setAttribute("min", today);
    	    checkOutInput.setAttribute("min", today);
    	
        	
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
</head>
<body>
	<!--헤더-->
    <div id="sep">
        <%@ include file="/WEB-INF/views/include/header.jsp" %>
    </div>

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
					<form action="/hanok/hanok_list.do" method="GET">
						<div class="row g-4">
							<!-- Location -->
							<div class="col-md-6 col-lg-4">
								<div class="form-size-lg form-fs-md">
									<!-- input -->
									<label class="form-label">Location</label>
									<input type="text" name="location" class="form-guest-selector form-control form-control-lg selection-result" placeholder="지역을 입력하시오." value="${param.location}" required>
								</div>
							</div>
	
							<!-- Check in -->
							<div class="col-md-6 col-lg-3">
								<!-- Date input -->
								<div class="form-fs-md">
									<label class="form-label">Check in</label>
									<input type="date" name="checkIn" id="checkIn" class="form-control form-control-lg flatpickr" data-mode="range" placeholder="날짜를 고르시오." value="${param.checkIn}" required>
									<label class="form-label">Check out</label>
									<input type="date" name="checkOut" id="checkOut" class="form-control form-control-lg flatpickr" data-mode="range" placeholder="날짜를 고르시오." value="${param.checkOut}" required>
								</div>
							</div>
	
							<!-- Guest -->
							<div class="col-md-6 col-lg-3">
								<div class="form-fs-md">
									<!-- Dropdown input -->
									<div class="w-100">
										<label class="form-label">Guests</label>
										<div class="dropdown guest-selector me-2">
											<input type="text" name="capacity" class="form-guest-selector form-control form-control-lg selection-result" placeholder="인원 수를 입력하시오." id="dropdownguest" data-bs-auto-close="outside" data-bs-toggle="dropdown" value="${param.capacity}" required>
										</div>
									</div>
								</div>
							</div>
	
							<!-- Button -->
							<div class="col-md-6 col-lg-2 mt-md-auto">
								<button class="btn btn-lg btn-primary w-100 mb-0" type="submit"><i class="bi bi-search fa-fw"></i>Search</a>
							</div>
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

    <!--한옥-->
    <div id="sep">
        <section class="pt-0">
            <div class="container">
                <div class="row g-4">
                    <c:forEach var="customerVO" items="${map.list}">
					    <div class="col-md-6 col-xl-4">
					        <div class="card card-hover-shadow pb-0 h-100">
					            <div class="position-relative">
					                <img src="/images/rooms/${customerVO.roomImage}" class="card-img-top" alt="Card image">
					            </div>
					            <div class="card-body px-3">
					                <h5 class="card-title mb-0">
					                    <a href="/hanok/hanok_detail.do?hanok_id=${customerVO.hanok_id}&location=${param.location}&checkInDate=${param.checkIn}&checkOutDate=${param.checkOut}&capacity=${param.capacity}" class="stretched-link">
					                        ${customerVO.hanokName}
					                    </a>
					                </h5>
					                <span class="small">
					                    ${customerVO.roomName}
					                </span>
					            </div>
					            <div class="card-footer pt-0">
					                <div class="d-sm-flex justify-content-sm-between align-items-center flex-wrap">
					                    <div class="hstack gap-2">
					                        <h5 class="fw-normal text-success mb-0">${customerVO.roomPrice}</h5>
					                        <small>/per night</small>
					                    </div>
					                    <div class="mt-2 mt-sm-0">
					                        <a href="/hanok/hanok_detail.do?hanok_id=${customerVO.hanok_id}&location=${param.location}&checkInDate=${param.checkIn}&checkOutDate=${param.checkOut}&capacity=${param.capacity}" class="btn btn-sm btn-primary mb-0">View Details</a>
					                    </div>
					                </div>
					            </div>
					        </div>
					    </div>
					</c:forEach>
                </div>

                <!-- Pagination -->
                <div class="row">
                    <div class="col-12">
                        <nav class="mt-4 d-flex justify-content-center" aria-label="Page navigation">
						    <ul class="pagination">
						        <c:if test="${map.isPrev}">
						            <li class="page-item"><a class="page-link" href="?page=${map.startPage - 1}">Previous</a></li>
						        </c:if>
						        <c:forEach begin="${map.startPage}" end="${map.endPage}" var="i">
						            <li class="page-item ${i == map.currentPage ? 'active' : ''}">
						                <a class="page-link" href="?page=${i}">${i}</a>
						            </li>
						        </c:forEach>
						        <c:if test="${map.isNext}">
						            <li class="page-item"><a class="page-link" href="?page=${map.endPage + 1}">Next</a></li>
						        </c:if>
						    </ul>
						</nav>
                    </div>
                </div>
            </div>
        </section>
    </div>

    <!--footer-->
    <div id="sep">
		<%@ include file="/WEB-INF/views/include/footer.jsp" %>
    </div>
    
    <!-- Back to top -->
    <div class="back-top"></div>

    <!-- Bootstrap JS -->
    <script src="/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

    <!-- Vendors -->
    <script src="/vendor/glightbox/js/glightbox.js"></script>
    <script src="/vendor/choices/js/choices.min.js"></script>
    <script src="/vendor/tiny-slider/tiny-slider.js"></script>
    <script src="/vendor/sticky-js/sticky.min.js"></script>

    <!-- ThemeFunctions -->
    <script src="/js/functions.js"></script>
</body>
</html>