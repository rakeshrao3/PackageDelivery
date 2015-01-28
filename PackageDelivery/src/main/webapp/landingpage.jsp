<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>landing page</title>
<link href="assets/css/bootstrap.css" rel="stylesheet" />

<link href="assets/css/font-awesome.min.css" rel="stylesheet" />

<link href="assets/css/style.css" rel="stylesheet" />
<script src="assets/plugins/jquery.js"></script>
<script type="text/javascript" src="assets/plugins/jvalidate.js"></script>
<script type="text/javascript"
	src="assets/plugins/jquery-validate.bootstrap-tooltip.js"></script>
<style type="text/css">
#contain {
	width: 70%;
	height: 460px;
	background: #2B2B2B;
	border-radius: 84px;
	margin-left: 15%;
	margin-top: 3%;
}

#i2 {
	width: 90%;
	height: 382px;
	margin-left: 5%;
	border-radius: 43px;
	margin-top: 4%
}

#btns {
	margin-left: 16%;
	margin-top: -16%;
}

#btns1 {
	margin-left: 16%;
	margin-top: -16%;
}

#btn1 {
	padding: 11px 54px;
	font-size: 18px;
	line-height: 1.33;
	border-radius: 6px;
	background-color: #2B2B2B;
	border-color: #070707;
}

#btn2 {
	padding: 11px 43px;
	font-size: 18px;
	line-height: 1.33;
	border-radius: 6px;
	background-color: #2B2B2B;
	border-color: #070707;
}

a {
	color: #FCFCFC;
	text-decoration: none;
}

#logout {
	margin-top: -40%;
	margin-left: 63%;
}
</style>
</head>
<body>
	<header>
		<%@include file="header.jsp"%>
	</header>

	<div class="col-sm-3 col-md-3 pull-right">
		<a href="logout.do" style="color: black;"><button type="button" class="btn  btn-md col-sm-offset-2 "
				id="logout">Logout</button> </a>
	</div>

	<div id="contain" class="col-md-offset-2">
		<img alt="" src="images\123.png" id="i2">
		<div id="btns">
			<a style="color:white;" href="deliverypage.jsp"><button class="btn btn-lg " value="Internaltional Deilvery"
					id="btn2">Internaltional Deilvery</button></a>


		</div>
		<br>
		<div id="btns1">
			<a style="color: white;" href="deliverypage.jsp"><button class="btn btn-lg " value="Domestic Delivery"
					id="btn1">Domestic Deilvery</button></a>
		</div>
	</div>
	<br>
	<br>
	<footer>
		<%@include file="footer.jsp"%>
	</footer>
</body>
</html>