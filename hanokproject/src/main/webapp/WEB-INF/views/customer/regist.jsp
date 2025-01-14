<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
	<title>Gojeuneok Customer Regist</title>

	<!-- Meta Tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="author" content="Webestica.com">
	<meta name="description" content="Booking - Multipurpose Online Booking Theme">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css" />

	<!-- Favicon -->
	<link rel="shortcut icon" href="/images/favicon.ico">

	<!-- Google Font -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;700&family=Poppins:wght@400;500;700&display=swap">

	<!-- Plugins CSS -->
	<link rel="stylesheet" type="text/css" href="/vendor/font-awesome/css/all.min.css">
	<link rel="stylesheet" type="text/css" href="/vendor/bootstrap-icons/bootstrap-icons.css">

	<!-- Theme CSS -->
	<link rel="stylesheet" type="text/css" href="/css/style.css">
<script src="/js/script.js"></script>
<script>
$(document).ready(function() {
    // idCheck 버튼 클릭 시
    $("#idCheck").click(function() {
        const customerId = $("#customer_id").val().trim();
        
        if (customerId === "") {
            alert("Please Enter your ID");
            $("#customer_id").focus();  // 아이디 입력란에 포커스 설정
            return;
        }

        // Ajax 요청: idCheck.do URL로 customer_id 전송
        $.ajax({
            url: "/customer/idCheck.do",
            data: { customer_id: customerId },
            success: function(res) {
                // 중복된 아이디일 경우
                if (res > 0) {
                    alert("The ID is already in use.");
                    $("#customer_id").focus();  // 중복일 경우 아이디 입력란에 포커스 설정
                } else {
                    alert("The ID is available.");
                }
            },
            error: function(xhr, status, error) {
                alert("An error has occurred. Please try again.");
            }
        });
    });
});

</script>
</head>

<body>

<%@ include file="/WEB-INF/views/include/header.jsp" %>

<!-- **************** MAIN CONTENT START **************** -->
<main>
	
<!-- =======================
Main Content START -->
<section class="vh-xxl-100">
	<div class="container h-100 d-flex px-0 px-sm-4" style="margin: 0 70; padding: 20px;">
		<div class="row justify-content-center align-items-center m-auto">
			<div class="col-12">
				<div class="bg-mode shadow rounded-3 overflow-hidden">
					<div class="row g-0">
						<!-- Vector Image -->
						<div class="col-lg-6 d-md-flex align-items-center order-2 order-lg-1">
							<div class="p-3 p-lg-5">
								<img src="/images/loginlogo.png" alt="">
							</div>
							<!-- Divider -->
							<div class="vr opacity-1 d-none d-lg-block"></div>
						</div>
		
						<!-- Information -->
						<div class="col-lg-6 order-1">
							<div class="p-4 p-sm-6">
								<!-- Logo -->
								<a href="index.html">
									<img class="h-50px mb-4" src="/images/gojeuneoklogo.png" alt="logo">
								</a>
								<!-- Title -->
								<h1 class="mb-2 h3">Create new account</h1>
								<p class="mb-0">Already a member?<a href="login.do"> Log in</a></p>
		
								<!-- Form START -->
								<form class="mt-4 text-start" action="insert.do" method="post">
									<!--id -->
									<div class="mb-3">
										<div class="mb-3">
    <label class="form-label">Enter id</label>
    <div class="input-group">
    <input type="text" class="form-control" id="customer_id" name="customer_id" placeholder="Please Enter your ID.">
    <span class="input-group-text">
        <a href="javascript:;" class="btn bgGray" id="idCheck">Check for Duplication</a>
    </span>
</div>

</div>
									</div>
									
									<!-- Password -->
									<div class="mb-3 position-relative">
										<label class="form-label">Enter password</label>
										<input class="form-control fakepassword" type="password" name="customer_pwd">
										<span class="position-absolute top-50 end-0 translate-middle-y p-0 mt-3">
											<i class="fakepasswordicon fas fa-eye-slash cursor-pointer p-2"></i>
										</span>
									</div>
									<!-- Confirm Password -->
									<div class="mb-3">
										<label class="form-label">Confirm Password</label>
										<input type="password" class="form-control">
									</div>
									
									<!-- name -->
									<div class="mb-3 position-relative">
										<label class="form-label">Enter Name</label>
										<input class="form-control" type="text" name="customer_name">
									</div>
									
									<!-- address -->
									<div class="mb-3 position-relative">
										<label class="form-label">Enter address</label>
										<input class="form-control" type="text" name="customer_address">
									</div>
									
									<!-- Email -->
									<div class="mb-3">
										<label class="form-label">Enter Email</label>
										<input type="text" class="form-control" name="customer_email">
									</div>
									
									<!-- tel -->
									<div class="mb-3 position-relative">
										<label class="form-label">Enter Phone Number</label>
										<input class="form-control" type="text" name="customer_tel">
										
									</div>
									
								
									
									<!-- Button -->
									<div><button type="submit" class="btn btn-primary w-100 mb-0">Sign up</button></div>
		
									
									<!-- Copyright -->
									<div class="text-primary-hover text-body mt-3 text-center"> Copyrights ©2024 Booking. Build by <a href="https://www.webestica.com/" class="text-body">Webestica</a>. </div>
								</form>
								<!-- Form END -->
							</div>		
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- =======================
Main Content END -->

</main>
<!-- **************** MAIN CONTENT END **************** -->

<!-- Back to top -->
<div class="back-top"></div>

<!-- Bootstrap JS -->
<script src="vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

<!-- ThemeFunctions -->
<script src="js/functions.js"></script>

</body>
</html>