
<!DOCTYPE html>
<html lang="en">
<head>
	<title>HUMANREX | Home</title>
	<meta charset="UTF-8">

	<meta name="viewport" content="width=device-width, initial-scale=1">

<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="<?=base_url()?>assets/source/loginpage/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?=base_url()?>assets/source/loginpage/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<!--<link href="/assets/font-awesome-4.7.0.min.css" rel="stylesheet" type="text/css" />-->
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?=base_url()?>assets/source/loginpage/vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?=base_url()?>assets/source/loginpage/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?=base_url()?>assets/source/loginpage/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?=base_url()?>assets/source/loginpage/css/util.css">
	<link rel="stylesheet" type="text/css" href="<?=base_url()?>assets/source/loginpage/css/main.css">
<!--===============================================================================================-->
<link rel="stylesheet" href="<?=base_url()?>assets/source/bootstrap-4.0.0/css/bootstrap.min.css">
<script src="<?=base_url()?>assets/source/jquery-3.3.1.min.js"></script>
<script src="<?=base_url()?>assets/source/popper.min.js"></script>
<script src="<?=base_url()?>assets/source/bootstrap-4.0.0/js/bootstrap.min.js"></script>

</head>

<body>

	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<img src="<?=base_url()?>assets/source/loginpage/images/logo2.jpeg" alt="IMG">
          <br><br><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Human Rex</h3>
				</div>

				<form class="login100-form validate-form" method="post" action="<?php echo base_url(); ?>loginMe">
					<span class="login100-form-title">
						Login Here !
					</span>


					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<input class="input100" type="text" name="email" placeholder="Email">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<input class="input100" type="password" name="password" placeholder="Password">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>

					<?php $this->load->helper('form'); ?>
	        <div class="row">
	            <div class="col-md-12">
	                <?php echo validation_errors('<div class="alert alert-danger alert-dismissable">', ' <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button></div>'); ?>
	            </div>
	        </div>
	        <?php
	        $this->load->helper('form');
	        $error = $this->session->flashdata('error');
	        if($error)
	        {
	            ?>
	            <div class="alert alert-danger alert-dismissable">
	                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
	                <?php echo $error; ?>
	            </div>
	        <?php }
	        $success = $this->session->flashdata('success');
	        if($success)
	        {
	            ?>
	            <div class="alert alert-success alert-dismissable">
	                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
	                <?php echo $success; ?>
	            </div>
	        <?php } ?>

					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							Login
						</button>
					</div>

					<div class="text-center p-t-12">
						<span class="txt1">
							Forgot
						</span>
						<a class="txt2" href="#">
							Username / Password?
						</a>
					</div>

					<div class="text-center p-t-136">
						<a class="txt2" href="#">
							Create your Account
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>


<!--===============================================================================================-->
	<script src="<?=base_url()?>assets/source/loginpage/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="<?=base_url()?>assets/source/loginpage/vendor/bootstrap/js/popper.js"></script>
	<script src="<?=base_url()?>assets/source/loginpage/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="<?=base_url()?>assets/source/loginpage/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="<?=base_url()?>assets/source/loginpage/vendor/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
<!--===============================================================================================-->
	<script src="<?=base_url()?>assets/source/loginpage/js/main.js"></script>

</body>
</html>
