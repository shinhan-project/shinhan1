<!-- hotel_booking.html 참고(민규) -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>예약페이지 - ${roomMap.room_name}</title>

	<!-- Meta Tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="author" content="Webestica.com">
	<meta name="description" content="Booking - Multipurpose Online Booking Theme">

	<!-- Google Font -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;700&family=Poppins:wght@400;500;700&display=swap">

	<!-- Plugins CSS -->
	<link rel="stylesheet" type="text/css" href="/vendor/font-awesome/css/all.min.css">
	<link rel="stylesheet" type="text/css" href="/vendor/bootstrap-icons/bootstrap-icons.css">
	<link rel="stylesheet" type="text/css" href="/vendor/choices/css/choices.min.css">

	<!-- Theme CSS -->
	<link rel="stylesheet" type="text/css" href="/css/style.css">
	
	<style>
	.payment-options {
	    display: flex;
	    gap: 20px; /* 각 옵션 간의 간격 */
	    justify-content: center;
	    margin-top: 20px;
	}
	
	.payment-option {
	    display: flex;
	    align-items: center;
	    justify-content: center;
	    padding: 10px 20px;
	    border: 2px solid #ccc; /* 기본 테두리 */
	    border-radius: 8px;
	    cursor: pointer;
	    transition: background-color 0.3s ease, border-color 0.3s ease;
	    user-select: none; /* 드래그 방지 */
	}
	
	.payment-option img {
	    max-width: 100px; /* 이미지 크기 제한 */
	    height: auto;
	}
	
	.payment-option:hover {
	    border-color: #888; /* 마우스 오버 시 테두리 색 변경 */
	}
	
	.payment-option.selected {
	    background-color: #ccc; /* 클릭 시 회색 배경 */
	    border-color: #444; /* 클릭 시 테두리 색 변경 */
	}
	
	</style>
	
	<script>
	    document.addEventListener("DOMContentLoaded", () => {
	        const paymentOptions = document.querySelectorAll(".payment-option");
	
	        paymentOptions.forEach(option => {
	            option.addEventListener("click", () => {
	                // 모든 옵션에서 선택 상태 제거
	                paymentOptions.forEach(opt => opt.classList.remove("selected"));
	                // 현재 클릭한 옵션에 선택 상태 추가
	                option.classList.add("selected");
	            });
	        });
	        

	    	document.getElementById('accept1').addEventListener('change', function(e) {
	    	    const allCheckboxes = document.querySelectorAll('.form-check-input:not(#accept1, #hotelType1, #hotelType2, #hotelType3, #hotelType4, #hotelType5, #hotelType6, #hotelType7, #hotelType8)');
	    	    allCheckboxes.forEach(checkbox => checkbox.checked = e.target.checked);
	    	});
	    });
	</script>
<%--아임포트 라이브러리--%>
	<script type="text/javascript"	src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script>
	window.addEventListener('DOMContentLoaded', () => {
		var IMP = window.IMP; 
		IMP.init("imp02723803");
		var name = $("#name").val();
	    var phone = $("#phone").val();
	    var email = $("#email").val();
	    var address = $("#address").text();
	    var price = $("#total-price").val();
	    let pg = "";
	    let payMethod = "";
	
	    $(document).on('click', '#cardPay', function(){
	        pg = "html5_inicis";
	        payMethod = "card"
	    });
	 
	    $(document).on('click', '#phonePay', function(){
	        pg = "danal";
	        payMethod = "MOBILE";
	    });
	 
	    $(document).on('click', '#kakaoPay', function(){
	        pg = "kakaopay";
	        payMethod = "card"
	    });
	    
	    $(document).on('click', '#naverPay', function(){
	        pg = "naverpay";
	        payMethod = "card"
	    });   
			
		    
	    $(document).on('click', '#money-btn', function(){
	    	console.log("결제 버튼 클릭됨");
	        console.log("PG: ", pg, "Pay Method: ", payMethod);
	        
			IMP.request_pay({
				pg: pg,
		        pay_method: payMethod,
		        merchant_uid: 'merchant_' + new Date().getTime(),   // 주문번호
		        name: "${roomMap.roomInfo.room_name}",
		        amount: ${roomMap.roomInfo.room_price},   // 숫자 타입
		        buyer_email: email,
		        buyer_name: name,
		        buyer_tel: phone,
		        buyer_addr: address,
		        buyer_postcode: ""
		    }, function (res) { // callback
		    	console.log(res);
		    	if (res.success) {
		    		var msg = '결제가 완료되었습니다.';
		    		console.log("결제성공 ");
		    		$.ajax({
						type: "POST",
						url: '/hanok/hanok_booking_confirm',
						dataType : "JSON",
						data: {
							amount: ${roomMap.roomInfo.room_price},
							imp_uid: res.imp_uid,
							merchant_uid: res.merchant_uid
						}
					});
	            	// 응답 데이터의 정보들
	                console.log("Payment success!");
	                console.log("Payment ID : " + res.imp_uid);
	                console.log("Order ID : " + res.merchant_uid);
	                console.log("Payment Amount : " + res.amount);
	            } else {
	            	var msg = '결제에 실패하였습니다.';
	            }
		    	alert(msg);
		    });
		});
	});
	</script>
</head>
<body>
	<!--헤더-->
    <div id="sep">
        <%@ include file="/WEB-INF/views/include/header.jsp" %>
    </div>
    
    <!-- **************** MAIN CONTENT START **************** -->
	<main>
	
	<!-- =======================
	Page content START -->
	<section>
		<div class="container">
			<div class="row g-4 g-lg-5">	
	
				<!-- Left side content START -->
				<div class="col-xl-8">
					<div class="vstack gap-5">
						<!-- Hotel information START -->
						<div class="card shadow">
							<!-- Card header -->
							<div class="card-header p-4 border-bottom">
								<!-- Title -->
								<h3 class="mb-0"><i class="fa-solid fa-hotel me-2"></i>숙소 정보</h3>
							</div>
	
							<!-- Card body START -->
							<div class="card-body p-4">
								<!-- Card list START -->
								<div class="card mb-4">
									<div class="row align-items-center">
										<!-- Image -->
										<div class="col-sm-6 col-md-3">
											<img src="/images/hanoks/${hanokMap.hanokImg}" class="card-img" alt="${hanokMap.hanokInfo.hanok_name}">
										</div>
	
										<!-- Card Body -->
										<div class="col-sm-6 col-md-9">
											<div class="card-body pt-3 pt-sm-0 p-0">
												<!-- Title -->
												<h5 class="card-title"><a href="${hanokMap.hanokInfo.hanok_url}">${hanokMap.hanokInfo.hanok_name}</a></h5>
												<p class="small mb-2" id="address"><i class="bi bi-geo-alt me-2"></i>${hanokMap.hanokInfo.hanok_address}</p>
	
												<!-- Rating star -->
												<ul class="list-inline mb-0">
													<li class="list-inline-item me-0 small"><i class="fa-solid fa-star text-warning"></i></li>
													<li class="list-inline-item ms-2 h6 small fw-bold mb-0">4.5/5.0</li>
												</ul>
											</div>
										</div>
	
									</div>
								</div>
								<!-- Card list END -->
								
								<!-- Information START -->
								<div class="row g-4">
									<!-- Item -->
									<div class="col-lg-4">
										<div class="bg-light py-3 px-4 rounded-3">
											<h6 class="fw-light small mb-1">체크인</h6>
											<h5 class="mb-1">${checkInDate}</h5>
											<small><i class="bi bi-alarm me-1"></i>15:00 pm</small>
										</div>
									</div>
	
									<!-- Item -->
									<div class="col-lg-4">
										<div class="bg-light py-3 px-4 rounded-3">
											<h6 class="fw-light small mb-1">체크아웃</h6>
											<h5 class="mb-1">${checkOutDate}</h5>
											<small><i class="bi bi-alarm me-1"></i>13:00 pm</small>
										</div>
									</div>
	
									<!-- Item -->
									<div class="col-lg-4">
										<div class="bg-light py-3 px-4 rounded-3">
											<h6 class="fw-light small mb-1">객실</h6>
											<h5 class="mb-1">${roomMap.roomInfo.room_name}</h5>
											<small><i class="bi bi-brightness-high me-1"></i>${night_day}</small>
										</div>
									</div>
								</div>
								<!-- Information END -->
	
								<!-- Card START -->
								<div class="card border mt-4">
									<!-- Card header -->
									<div class="card-header border-bottom d-md-flex justify-content-md-between">
										<h5 class="card-title mb-0">약관 동의</h5>
									</div>
	
									<!-- Card body -->
									<div class="card-body">
										<!-- List -->
	                                    <!-- Card body START -->
	                                    <div class="card-body">
	                                        <form class="check-box">
	                                            <!-- Checkbox -->
	                                            <div class="form-check">
	                                                <input class="form-check-input" type="checkbox" value="" id="accept1">
	                                                <label class="form-check-label" for="accept1">약관 전체 동의</label>
	                                            </div>
	                                            <!-- Checkbox -->
	                                            <div class="form-check">
	                                                <input class="form-check-input" type="checkbox" value="" id="accept2" required>
	                                                <label class="form-check-label" for="accept2">숙소 이용 규칙 및 취소/환불 규정 동의 (필수)</label>
	                                            </div>
	                                            <!-- Checkbox -->
	                                            <div class="form-check">
	                                                <input class="form-check-input" type="checkbox" value="" id="accepte3" required>
	                                                <label class="form-check-label" for="accepte3">개인 정보 수집 및 이용 동의 (필수)</label>
	                                            </div>
	                                            <!-- Checkbox -->
	                                            <div class="form-check">
	                                                <input class="form-check-input" type="checkbox" value="" id="accept4" required>
	                                                <label class="form-check-label" for="accept4">개인 정보 제 3자 제공 동의 (필수)</label>
	                                            </div>
	                                            <!-- Checkbox -->
	                                            <div class="form-check">
	                                                <input class="form-check-input" type="checkbox" value="" id="accept5" required>
	                                                <label class="form-check-label" for="accept5">만 14세 이상 확인 (필수)</label>
	                                            </div>
	                                        </form>	
	                                    </div>
									</div>
								</div>
								<!-- Card END -->
							</div>
							<!-- Card body END -->
						</div>
						<!-- Hotel information END -->
	
						<!-- Guest detail START -->
						<div class="card shadow">
							<!-- Card header -->
							<div class="card-header border-bottom p-4">
								<h4 class="card-title mb-0"><i class="bi bi-people-fill me-2"></i>대표 예약자 정보</h4>
							</div>
								
							<!-- Card body START -->
							<div class="card-body p-4">
								<!-- Form START -->
								<form class="row g-4">
									<!-- Title -->
									<div class="col-12">
										<div class="bg-light rounded-2 px-4 py-3">
											<h6 class="mb-0">Main Guest</h6>
										</div>
									</div>
	
									<!-- Input -->
									<div class="col-md-5">
										<label class="form-label">이름</label>
										<input type="text" name="name" id="name" class="form-control form-control-lg" placeholder="이름을 입력하세요." value="${param.name}" required>
									</div>
	
									<!-- Input -->
									<div class="col-md-6">
										<label class="form-label">이메일</label>
										<input type="email" id="email" class="form-control form-control-lg" placeholder="이메일을 입력하세요." value="${param.email}" required>
										<div id="emailHelp" class="form-text">(Booking voucher will be sent to this email ID)</div>
									</div>
	
									<!-- Input -->
									<div class="col-md-6">
										<label class="form-label">휴대폰 번호</label>
										<input type="text" name="phone" id="phone" class="form-control form-control-lg" placeholder="휴대폰 번호를 입력하세요." value="${param.phone}" required>
									</div>
								</form>
								<!-- Form END -->
	
								<!-- Alert START -->
								<div class="alert alert-info my-4" role="alert">Login to prefill all details and get access to secret deals</div>
								<!-- Alert END -->
	
								<!-- Special request START -->
								<div class="card border mt-4">
									<!-- Card header -->
									<div class="card-header border-bottom">
										<h5 class="card-title mb-0">Special request</h5>
									</div>
	
									<!-- Card body START -->
									<div class="card-body">
										<form class="hstack flex-wrap gap-3">
											<!-- Checkbox -->
											<div class="form-check">
												<input class="form-check-input" type="checkbox" value="" id="hotelType1">
												<label class="form-check-label" for="hotelType1">늦은 체크인</label>
											</div>
											<!-- Checkbox -->
											<div class="form-check">
												<input class="form-check-input" type="checkbox" value="" id="hotelType2">
												<label class="form-check-label" for="hotelType2">조기 체크인</label>
											</div>
											<!-- Checkbox -->
											<div class="form-check">
												<input class="form-check-input" type="checkbox" value="" id="hotelType3">
												<label class="form-check-label" for="hotelType3">주방 기구 사용</label>
											</div>
											<!-- Checkbox -->
											<div class="form-check">
												<input class="form-check-input" type="checkbox" value="" id="hotelType4">
												<label class="form-check-label" for="hotelType4">픽업 서비스 이용</label>
											</div>
											<!-- Checkbox -->
											<div class="form-check">
												<input class="form-check-input" type="checkbox" value="" id="hotelType5">
												<label class="form-check-label" for="hotelType5">가이드 신청</label>
											</div>
											<!-- Checkbox -->
											<div class="form-check">
												<input class="form-check-input" type="checkbox" value="" id="hotelType6">
												<label class="form-check-label" for="hotelType6">석식 신청</label>
											</div>
	                                        <!-- Checkbox -->
											<div class="form-check">
												<input class="form-check-input" type="checkbox" value="" id="hotelType7">
												<label class="form-check-label" for="hotelType7">조식 신청</label>
											</div>
	                                        <!-- Checkbox -->
											<div class="form-check">
												<input class="form-check-input" type="checkbox" value="" id="hotelType8">
												<label class="form-check-label" for="hotelType8">기타 문의</label>
											</div>
										</form>	
									</div>
									<!-- Card body END -->
								</div>
								<!-- Special request END -->
							</div>
							<!-- Card body END -->
						</div>
						<!-- Guest detail END -->
	
						<!-- Payment Options START -->
						<div class="card shadow">
							<!-- Card header -->
							<div class="card-header border-bottom p-4">
								<!-- Title -->
								<h4 class="card-title mb-0"><i class="bi bi-wallet-fill me-2"></i>결제하기</h4>
							</div>
							
							<!-- Card body START -->
							<div class="card-body p-4 pb-0">
	
								<!-- Accordion START -->
								<div class="accordion accordion-icon accordion-bg-light" id="accordioncircle">
									<!-- Credit or debit card START -->
									<div class="accordion-item mb-3">
										<h6 class="accordion-header" id="heading-1">
											<button class="accordion-button rounded collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse-1" aria-expanded="true" aria-controls="collapse-1">
												<i class="bi bi-credit-card text-primary me-2"></i>	<span class="me-5">Payment Options</span>
											</button>
										</h6>
										<div id="collapse-1" class="accordion-collapse collapse show" aria-labelledby="heading-1" data-bs-parent="#accordioncircle">
											<!-- Accordion body -->
											<div class="accordion-body">
	
	
	
													<!-- Alert box START -->
													<div class="col-12" style="margin-bottom:25px">
														<div class="payment-options">
															<div class="payment-option" id="cardPay">
																신용카드
															</div>
															<div class="payment-option" id="naverPay">
																네이버페이
															</div>
															<div class="payment-option" id="kakaoPay">
																카카오페이
															</div>
															<div class="payment-option" id="phonePay">
																휴대폰 결제
															</div>
														</div>
														
													</div>
													<!-- Alert box END -->
	
													<!-- Buttons -->
													<div class="col-12">
														<div class="d-sm-flex justify-content-sm-between align-items-center">
															<h4>${roomMap.roomInfo.room_price}원 <span class="small fs-6">Due now</span></h4>
															<button id="money-btn" class="btn btn-primary mb-0">결제하기</button>
														</div>
													</div>
	
												</form>
												<!-- Form END -->
											</div>
										</div>
									</div>
									<!-- Credit or debit card END -->
	
								</div>
								<!-- Accordion END -->
							</div>	
							<!-- Card body END -->
	
							<div class="card-footer p-4 pt-0">
								<!-- Condition link -->
								<p class="mb-0">해당 예약은 <a href="#">이용 약관</a> 및 <a href="#">정책</a>에 동의하는 것으로 간주됩니다.</p>
							</div>
						</div>
						<!-- Payment Options END -->
					</div>	
				</div>
				<!-- Left side content END -->
	
				<!-- Right side content START -->
				<aside class="col-xl-4">
					<div class="row g-4">
	
						<!-- Price summary START -->
						<div class="col-md-6 col-xl-12">
							<div class="card shadow rounded-2">
								<!-- card header -->
								<div class="card-header border-bottom">
									<h5 class="card-title mb-0">요금 상세 정보</h5>
								</div>
		
								<!-- Card body -->
								<div class="card-body">
									<ul class="list-group list-group-borderless">
										<li class="list-group-item d-flex justify-content-between align-items-center">
											<span class="h6 fw-light mb-0">Room Charges</span>
											<span class="fs-5">${roomMap.roomInfo.room_price}원</span>
										</li>
										<li class="list-group-item d-flex justify-content-between align-items-center">
											<span class="h6 fw-light mb-0">Total Discount<span class="badge text-bg-danger smaller mb-0 ms-2">0% off</span></span>
											<span class="fs-5 text-success">-0원</span>	
										</li>
										<li class="list-group-item d-flex justify-content-between align-items-center">
											<span class="h6 fw-light mb-0">Price after discount</span>
											<span class="fs-5">0원</span>
										</li>
										<li class="list-group-item d-flex justify-content-between align-items-center">
											<span class="h6 fw-light mb-0">Taxes % Fees</span>
											<span class="fs-5">0원</span>
										</li>
									</ul>
								</div>
		
								<!-- Card footer -->
								<div class="card-footer border-top">
									<div class="d-flex justify-content-between align-items-center">
										<span class="h5 mb-0">Payable Now</span>
										<span class="h5 mb-0" id="total-price">${roomMap.roomInfo.room_price}<span id="won">원</span></span>
									</div>
								</div>
							</div>
						</div>
						<!-- Price summary END -->
	
						
	
						<!-- Information START -->
						<div class="col-md-6 col-xl-12">
							<div class="card shadow">
								<!-- Card header -->
								<div class="card-header border-bottom">
									<h5 class="card-title mb-0">Why Sign up or Log in</h5>
								</div>
	
								<!-- Card body -->
								<div class="card-body">
									<!-- List -->
									<ul class="list-group list-group-borderless">
										<li class="list-group-item d-flex mb-0"><i class="fa-solid fa-check text-success me-2"></i>
											<span class="h6 fw-normal">Get Access to Secret Deal</span>
										</li>
	
										<li class="list-group-item d-flex mb-0"><i class="fa-solid fa-check text-success me-2"></i>
											<span class="h6 fw-normal">Book Faster</span>
										</li>
	
										<li class="list-group-item d-flex mb-0"><i class="fa-solid fa-check text-success me-2"></i>
											<span class="h6 fw-normal">Manage Your Booking</span>
										</li>
									</ul>
								</div>
							</div>
						</div>
						<!-- Information END -->
	
					</div>
				</aside>
				<!-- Right side content END -->
			</div> <!-- Row END -->
		</div>
	</section>
	<!-- =======================
	Page content START -->
	
	</main>
	<!-- **************** MAIN CONTENT END **************** -->

    <!--footer-->
    <div id="sep">
		<%@ include file="/WEB-INF/views/include/footer.jsp" %>
    </div>
    
	<!-- Back to top -->
	<div class="back-top"></div>
	
	<!-- Bootstrap JS -->
	<script src="/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
	
	<!-- Vendors -->
	<script src="/vendor/choices/js/choices.min.js"></script>
	
	<!-- ThemeFunctions -->
	<script src="/js/functions.js"></script>
    
</body>
</html>