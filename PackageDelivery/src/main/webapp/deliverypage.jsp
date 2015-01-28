<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>delivery page</title>
<link href="assets/css/bootstrap.css" rel="stylesheet" />

<link href="assets/css/font-awesome.min.css" rel="stylesheet" />

<link href="assets/css/style.css" rel="stylesheet" />
<script src="assets/plugins/jquery-1.11.1.js"></script>
<script type="text/javascript" src="assets/plugins/jvalidate.js"></script>
<script type="text/javascript"
	src="assets/plugins/jquery-validate.bootstrap-tooltip.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#formone").validate({

			tooltip_options : {
				name : {
					trigger : 'focus',
					placement : 'right'
				},
				weight : {
					trigger : 'focus',
					placement : 'right'
				},

			},

		});
	});
</script>

<style type="text/css">
#datepicker {
	width: 38%;
}

#weight {
	width: 60%;
}

#lablet {
	margin-top: 4%;
	margin-left: -45%;
}

#time {
	margin-top: 4%; margin-left : 0.5%;
	width: 17%;
	margin-left: 0.5%;
}

#sel {
	width: 18%;
	margin-top: -8.2%;
	margin-left: 21%;
}

}
#footer {
	margin-top: 11%;
}

#contain {
	width: 63%;
	height: 410px;
	background: #2B2B2B;
	border-radius: 20px;
	margin-left: 25%;
	margin-top: -2%
}

#inner {
	width: 60%;
	height: 385px;
	background: rgb(231, 123, 0);
	border-radius: 20px;
	margin-left: 26.5%;
	margin-top: -25.5%;
}

#con {
	margin-top: 5%;
	margin-left: -16%;
}

.col-sm-offset-3 {
	margin-left: 29%;
	margin-top: 5%;
}

#contain1 {
	width: 54%;
	margin-left: 31%;
	margin-top: -22%;
}

/* body {
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
	font-size: 14px;
	line-height: 1.428571429;
	color: #FDFDFD;
	background-color: #fff;
} */
em {
	color: red;
}

.btn-lg {
	padding: 9px 48px;
	font-size: 18px;
	line-height: 1.33;
	border-radius: 29px;
	background-color: black;
	color: white;
}

.btn:hover,.btn:focus {
	color: white;
	text-decoration: none;
}

label {
	color: black;
}

#selweight {
	width: 35%;
	margin-top: -8.25%;
	margin-left: 65%;
}

#formone {
	margin-top: -45;
}
#logout {
margin-top: -47%;
margin-left: 63%;
}
</style>

</head>
<body>
	<header> <%@include file="header.jsp"%>
	</header>
	<div class="col-sm-3 col-md-3 pull-right">
		<a href="logout.do" style="color: black;"><button type="button" class="btn  btn-md col-sm-offset-2 "
				id="logout">Logout</button> </a>
	</div>
	<h3 class=" col-sm-offset-2">Delivery Details</h3>
	
	<div id="con">
	
		<div id="contain"></div>
		<div id="inner"></div>
		<div id="contain1">
			<form class="form-horizontal" role="form" id="formone"
				action="thankyou.do" method="post">


				<div class="form-group">
					<label for="name" class="col-sm-3 control-label">Customer-Name&nbsp;<em>*</em></label>
					<div class="col-sm-6">
						<input type="text" class="form-control "
							data-trigger="focus" id="name" name="name"
							placeholder="Enter Name" required>
					</div>
				</div>

				<div class="form-group">
					<label for="name" class="col-sm-3 control-label">Mobile&nbsp;<em>*</em></label>
					<div class="col-sm-6">
						<input type="text" class="form-control"
							data-trigger="focus" id="mobile" name="mobile"
							placeholder="Enter Customer Mobile Number" required>
					</div>
				</div>

				<div class="form-group">
					<label for="number" class="col-sm-3 control-label">Package-Weight&nbsp;<em>*</em></label>
					<div class="col-sm-6">
						<input type="text" class="form-control"
							data-trigger="focus" id="weight" name="weight"
							placeholder="Enter weight" required> <select
							class="form-control required select" id="selweight"
							name="selweight">
							<option selected="selected"></option>
							<option value="grams">grams</option>
							<option value="Kilograms">Kilograms</option>
						</select>
					</div>
				</div>

				<div class="form-group">
					<label for="date" class="col-sm-3 control-label">Delivery-Date&nbsp;<em>*</em></label>
					<div class="col-sm-6">
						<input type="date" id="datepicker" name="date"
							class="form-control required date" required> <label
							for="select" class="col-sm-5 control-label" id="lablet">Time&nbsp;<em>*</em></label>

						<select class="form-control required select" id="time" name="time">
							<option selected="selected"></option>
							
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
							<option value="9">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>

						</select> <select class="form-control required select" id="sel" name="sel">
							<option selected="selected"></option>
							<option value="am">AM</option>
							<option value="pm">PM</option>
						</select>


					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-3 control-label">Delivery-Address&nbsp;<em>*</em>
					</label>
					<div class="col-sm-5">
						<textarea rows="3" cols="56" name="add" id="add" class="required"></textarea>
					</div>
				</div>

				<div class="form-group">

					<div class="col-sm-offset-3 col-sm-5">
						<button type="submit" class="btn btn-lg pull-left" id="submit">Submit
						</button>
						<a href="landingpage.jsp"><button type="button" class="btn btn-lg pull-right"
								id="submit">Cancel</button></a>
					</div>

				</div>


			</form>

		</div>
	</div>
	<!--links  -->
<br>
<br>
	<div id="footer">
		<%@include file="footer.jsp"%>
	</div>


</body>
</html>