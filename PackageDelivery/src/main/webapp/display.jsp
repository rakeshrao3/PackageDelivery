<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>display</title>
<link href="assets/css/bootstrap.css" rel="stylesheet" />

<link href="assets/css/font-awesome.min.css" rel="stylesheet" />

<link href="assets/css/style.css" rel="stylesheet" />
<style type="text/css">
#deliveryperson {
	width: 60%;
	margin-left: 20%;
}

#customerinfo {
	width: 40%;
	margin-left: 30%;
}

#submit {
	width: 30%;
	margin-left: 12%;
}
#logout{
margin-top: -30%;
margin-left: 63%;
}
</style>
</head>
<body>
	<header> <%@include file="header.jsp"%>
	</header>
	<br>
	<div class="col-sm-3 col-md-3 pull-right">
					<a href="logout.do" style="color: black;"><button type="button"
					class="btn  btn-md col-sm-offset-2 " id="logout">Logout</button>
			</a>
				</div>
	<div id="container">

		<div id="deliveryperson">
			<div class="panel panel-primary" id="panel">
				<div class="panel-heading">
					<h3 class="panel-title">Delivered From</h3>
				</div>
				<div class="panel-body" id="pbody">

					<table class="table table-striped">

						<thead>
							<tr>
								<th>Name</th>
								<th>Mobile</th>
								<th>Package-weight</th>
								<th>Pickup-Date</th>
								<th>Pickup-time</th>

							</tr>
						</thead>
						<tbody>
							<tr>
								<td>${signup.fname}</td>
								<td>${signup.mobile}</td>
								<td>${delivery.weight}&nbsp;${delivery.wieghtselect}</td>
								<td>${delivery.date}</td>
								<td>${delivery.time} ${delivery.timeselect}</td>

							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>

		<hr>

		<div id="customerinfo">
			<div class="panel panel-primary" id="panel">
				<div class="panel-heading">
					<h3 class="panel-title">Delivered To</h3>
				</div>
				<div class="panel-body" id="pbody">

					<table class="table table-striped">

						<thead>
							<tr>
								<th>Customer-Name</th>
								<th>Mobile</th>
								<th>Address</th>


							</tr>
						</thead>
						<tbody>
							<tr>
								<td>${delivery.cname}</td>
								<td>${delivery.mobile}</td>
								<td>${delivery.address}</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>

		</div>
		
		<hr>

		<div id="note" class="col-sm-offset-4">

			<h1>Thank you for using our Service.</h1>
			<br>
			<a href="landingpage.jsp"><button type="button"
					class="btn btn-success  btn-md col-sm-offset-2 " id="submit">Continue</button>
			</a>
		</div>
	</div>
	<br>
	<footer id="foot">
<%@include file="footer.jsp" %>
</footer>
</body>
</html>