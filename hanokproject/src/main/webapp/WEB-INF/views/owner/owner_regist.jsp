<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Owner Regist Page</title>

	<!-- Meta Tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="author" content="Webestica.com">
	<meta name="description" content="Booking - Multipurpose Online Booking Theme">

	

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

</head>

<body>




<!-- **************** MAIN CONTENT START **************** -->
<main>
	
<!-- =======================
Main Content START -->
<section class="vh-xxl-100">
	<div class="container h-100 d-flex px-0 px-sm-4">
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
								<a href="index.do">
									<img class="h-50px mb-4" src="/images/gojeuneoklogo.png" alt="logo">
								</a>
								<!-- Title -->
								<h1 class="mb-2 h3">Create new account</h1>
								<p class="mb-0">Already a member?<a href="owner_login.do"> Log in</a></p>
		
								<!-- Form START -->
								<form class="mt-4 text-start" action="insert.do" method="post">
									<!-- Email -->
									<div class="mb-3">
										<label class="form-label">Enter id</label>
										<input type="text" class="form-control" name="owner_id">
									</div>
									
									<!-- Password -->
									<div class="mb-3 position-relative">
										<label class="form-label">Enter password</label>
										<input class="form-control fakepassword" type="password" name="owner_pwd">
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
										<input class="form-control" type="text" name="owner_name">
									</div>
									
									<!-- address -->
									<div class="mb-3 position-relative">
										<label class="form-label">Enter address</label>
										<input class="form-control" type="text" name="owner_address">
									</div>
									
									<!-- Email -->
									<div class="mb-3">
										<label class="form-label">Enter Email</label>
										<input type="text" class="form-control" name="owner_email">
									</div>
									
									<!-- tel -->
									<div class="mb-3 position-relative">
										<label class="form-label">Enter Phone Number</label>
										<input class="form-control" type="text" name="owner_tel">
										
									</div>
									
								
									<!-- Remember me -->
									<div class="mb-3">
										<input type="checkbox" class="form-check-input" id="rememberCheck">
										<label class="form-check-label" for="rememberCheck">Keep me signed in</label>
									</div>
									<!-- Button -->
									<div><button type="submit" class="btn btn-primary w-100 mb-0">Sign up</button></div>
		
									<!-- Divider -->
									<div class="position-relative my-4">
										<hr>
										<p class="small position-absolute top-50 start-50 translate-middle bg-mode px-1 px-sm-2">Or sign in with</p>
									</div>
		
									<!-- Google and facebook button -->
									<div class="vstack gap-3">
										<a href="#" class="btn btn-light mb-0"><i class="fab fa-fw fa-google text-google-icon me-2"></i>Sign in with Google</a>
										<a href="#" class="btn btn-light mb-0"><i class="fab fa-fw fa-facebook-f text-facebook me-2"></i>Sign in with Facebook</a>
									</div>
		
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
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
<!-- Back to top -->
<div class="back-top"></div>

<!-- Bootstrap JS -->
<script src="vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

<!-- ThemeFunctions -->
<script src="js/functions.js"></script>

</body>
</html>