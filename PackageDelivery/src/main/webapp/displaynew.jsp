<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="assets/css/bootstrap.css" rel="stylesheet" />

<link href="assets/css/font-awesome.min.css" rel="stylesheet" />

<link href="assets/css/style.css" rel="stylesheet" />

<style type="text/css">
fieldset {
min-width: 0;
padding: 0;
margin: 0;
border: 1;
border-style: solid;
border-radius: 19px;
}



#note{
margin-top:6%;
}
.col-sm-5 {
width: 41.66666666666667%;
margin-top: 1.5%;
}
#line {
	margin-left: 50%;
	border-left-style: solid;
	height: 31%;
	border-left-width: thin;
	margin-top: -14.5%;
}

#deliveryperson {
	width: 26%;
margin-left: 20%;
margin-top: -27%;
}

#customerinfo {
	width: 26%;
margin-left: 53%;
margin-top: -15%;
}

#submit {
	width: 30%;
	margin-left: 12%;
}

#logout {
	margin-top: -30%;
	margin-left: 63%;
}
#contain {
	width: 75%;
height: 432px;
background: #2B2B2B;
border-radius: 20px;
margin-left: 13%;
margin-top: 2%;
}

#inner {
	width: 71%;
height: 397px;
background: rgb(231, 123, 0);
border-radius: 20px;
margin-left: 15%;
margin-top: -31%;
}
</style>
</head>
<body>
	<header>
		<%@include file="header.jsp"%>
	</header>
	<br>
	<div class="col-sm-3 col-md-3 pull-right">
		<a href="logout.do" style="color: black;"><button type="button"
				class="btn  btn-md col-sm-offset-2 " id="logout">Logout</button> </a>
	</div>
	
	<div id="contain"></div>
		<div id="inner"></div>
	<div id="container">
		
		<div id="deliveryperson">
			<fieldset>
					<form class="form-horizontal" role="form">
						<div class="form-group">
							<label class="col-md-5 control-label">Name: </label>
							<div class="col-sm-5">${signup.fname}</div>
							
						</div>

						<div class="form-group">
							<label class="col-md-5 control-label">Mobile: </label>
							<div class="col-sm-5">${signup.mobile}</div>
						</div>

						<div class="form-group">
							<label class="col-md-5 control-label">Package-weight: </label>
							<div class="col-sm-5">
								${delivery.weight}&nbsp;${delivery.wieghtselect}</div>
						</div>

						<div class="form-group">
							<label class="col-md-5 control-label">Pickup-Date: </label>
							<div class="col-sm-5">${delivery.date}</div>
						</div>

						<div class="form-group">
							<label class="col-md-5 control-label">Pickup-Time: </label>
							<div class="col-sm-5">${delivery.time}
								${delivery.timeselect}</div>
						</div>
					</form>
					</fieldset>
				</div>
			</div>
		
		<div id="line"></div>

		<div id="customerinfo">
			
				
					<!-- <h2 class="panel-title"><u><b>Delivered To</b></u></h2> -->
				<fieldset>
				
				
				
				
				<form class="form-horizontal" >
						<div class="form-group">
							<label class="col-md-5 control-label">Customer-Name: </label>
							<div class="col-sm-5">${delivery.cname}</div>
							
						</div>

						<div class="form-group">
							<label class="col-md-5 control-label">Mobile: </label>
							<div class="col-sm-5">${delivery.mobile}</div>
						</div>

						<div class="form-group">
							<label class="col-md-5 control-label">Address: </label>
							<div class="col-sm-5">
								${delivery.address}</div>
						</div>
				</form>
				
				</fieldset>
				
				
			</div>
		
<br>		

		<div id="note" class="col-sm-offset-4">

			<h1>Thank you for using our Service.</h1>
			<br>
			<a href="landingpage.jsp"><button type="button"
					class="btn btn-success  btn-md col-sm-offset-2 " id="submit">Continue</button>
			</a>
		</div>
		
		
		
	<br>
	<br>
	<br>
	<br>
	<footer id="foot">
<%@include file="footer.jsp" %>
</footer>
</body>
</html>