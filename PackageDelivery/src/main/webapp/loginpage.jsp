<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login page</title>
<link href="assets/css/bootstrap.css" rel="stylesheet" />

<link href="assets/css/font-awesome.min.css" rel="stylesheet" />

<link href="assets/css/style.css" rel="stylesheet" />
<script src="assets/plugins/jquery-1.11.1.js"></script>
<script type="text/javascript" src="assets/plugins/jvalidate.js"></script>
<script type="text/javascript"
	src="assets/plugins/jquery-validate.bootstrap-tooltip.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#form").validate({

			tooltip_options : {
				email : {
					trigger : 'focus',
					placement : 'right'
				},
				password : {
					trigger : 'focus',
					placement : 'right'
				},

			},

		});
	});
</script>

<style type="text/css">
.tooltip-inner { /* max-width: 200px; */
	padding: 3px 8px;
	color: #FFF;
	text-align: center;
	text-decoration: none;
	background-color: #C00909;
	border-radius: 4px;
	width: 143px;
}

.tooltip.right .tooltip-arrow {
	top: 50%;
	left: 0;
	margin-top: -5px;
	border-width: 5px 5px 5px 0;
	border-right-color: #C00909;
}

#panel {
	width: 43%;
	margin-left: 28%;
	margin-top: 9%;

}

#pbody {
	margin-left: 0%;
	margin-top: 1%;
}
#foot{
margin-top: 11%;
}
</style>
</head>
<body>
<header>
	<%@include file="header.jsp" %>
	</header>
	<div class="panel panel-primary" id="panel">
		<div class="panel-heading">
			<h3 class="panel-title">Login</h3>
		</div>
		<div class="panel-body" id="pbody">
			<form class="form-horizontal" role="form" id="form" action="landing.do" method="post">

				<div class="form-group">
					<label for="email" class="col-sm-3 control-label">Email<em>*</em></label>
					<div class="col-sm-6">
						<input type="text" class="form-control required email"
							data-trigger="focus" id="email" name="email"
							placeholder="Enter Email" required="required">
					</div>
				</div>

				<div class="form-group">
					<label for="password" class="col-sm-3 control-label">Password<em>*</em></label>
					<div class="col-sm-6">
						<input type="password" class="form-control required password "
							id="password" name="password" placeholder="Enter password"
							required="required" maxlength="10">
					</div>
				</div>
				<br>
				<div class="form-group">
					<div class="col-sm-offset-5 col-sm-5">
						<button type="submit" class="btn btn-primary btn-md" id="submit">Login
						</button><br>
						<a href="signup.do" class="pull-right">Sign-Up</a>

					</div>
				</div>

			</form>
		</div>
	</div>
	<!-- JAVASCRIPT FILES PLACED AT THE BOTTOM TO REDUCE THE LOADING TIME  -->
	<!-- CORE JQUERY  -->
	<!-- <script src="assets/plugins/jquery.js"></script> -->
	<!-- BOOTSTRAP SCRIPTS  -->
	<script src="assets/plugins/bootstrap.js"></script>

<footer id="foot">
<%@include file="footer.jsp" %>
</footer>
</body>
</html>