<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>한옥 검색 페이지</title>
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
</head>
<body>
	<!--헤더-->
    <div id="sep">
        <%@ include file="/WEB-INF/views/include/header.jsp" %>
    </div>

    <!--검색-->
    <div id="sep">
        <%@ include file="/WEB-INF/views/include/hanok_search.jsp" %>
    </div>

    <!--한옥-->
    <div id="sep">
        <section class="pt-0">
            <div class="container">
                <div class="row g-4">
                    <c:forEach var="customerVO" items="${map.list}">
					    <div class="col-md-6 col-xl-4">
					        <div class="card card-hover-shadow pb-0 h-100">
					            <div class="position-relative">
					                <img src="/assets/images/hanok/${customerVO.roomImage}" class="card-img-top" alt="Card image">
					            </div>
					            <div class="card-body px-3">
					                <h5 class="card-title mb-0">
					                    <a href="/hanok_detail.do?hanokId=${customerVO.hanok_id}" class="stretched-link">
					                        ${customerVO.hanokName}
					                    </a>
					                </h5>
					                <span class="small">
					                    <i class="far fa-calendar-alt me-2"></i>${customerVO.checkInDate} ~ ${customerVO.checkOutDate}
					                </span>
					            </div>
					            <div class="card-footer pt-0">
					                <div class="d-sm-flex justify-content-sm-between align-items-center flex-wrap">
					                    <div class="hstack gap-2">
					                        <h5 class="fw-normal text-success mb-0">${customerVO.roomPrice}</h5>
					                        <small>/per night</small>
					                    </div>
					                    <div class="mt-2 mt-sm-0">
					                        <a href="/hanok_detail.do?hanokId=${customerVO.hanok_id}" class="btn btn-sm btn-primary mb-0">View Details</a>
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
						        <c:if test="${map.startPage > 1}">
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
        </selection>
    </div>

    <!--footer-->
    <div id="sep">
		<%@ include file="/WEB-INF/views/include/footer.jsp" %>
    </div>
</body>
</html>