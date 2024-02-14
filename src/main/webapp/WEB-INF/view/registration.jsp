<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Form</title>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<!-- <script type="text/javascript" src="resources/js/registration.js"></script>
 -->
<script src="<c:url value="/resources/js/registration.js" />"></script>
<script>
	$(function() {
		$("#datepicker").datepicker();
	});
</script>
<style type="text/css">
@CHARSET "ISO-8859-1";
/* Style inputs, select elements and textareas */
input[type=text], select, textarea {
	width: 100%;
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	resize: vertical;
}

/* Style the label to display next to the inputs */
label {
	padding: 12px 12px 12px 0;
	display: inline-block;
}

/* Style the submit button */
input[type=submit] {
	background-color: #04AA6D;
	color: white;
	padding: 12px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	float: right;
}

/* Style the container */
.container {
	border-radius: 5px;
	background-color: #f2f2f2;
	padding: 20px;
}

/* Floating column for labels: 25% width */
.col-25 {
	float: left;
	width: 25%;
	margin-top: 6px;
}

/* Floating column for inputs: 75% width */
.col-75 {
	float: left;
	width: 75%;
	margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
	content: "";
	display: table;
	clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
	.col-25, .col-75, input[type=submit] {
		width: 100%;
		margin-top: 0;
	}
}
</style>
</head>
<body>
	<div class="container">
		<form>
			<div class="row">
				<div class="col-25">
					<label for="fname">First Name</label>
				</div>
				<div class="col-75">
					<input type="text" id="fname" name="firstname"
						placeholder="Your name..">
				</div>
			</div>
			<div class="row">
				<div class="col-25">
					<label for="lname">Last Name</label>
				</div>
				<div class="col-75">
					<input type="text" id="lname" name="lastname"
						placeholder="Your last name..">
				</div>
			</div>
			<div class="row">
				<div class="col-25">
					<label for="date">Date</label>
				</div>
				<div class="col-75">
					<input type="text" id="datepicker" name="date">
				</div>
			</div>
			<div class="row">
				<div class="col-25">
					<label for="date">SmsFlow</label>
				</div>
				<div class="col-75" id="send">
					<label class="radio-inline"> <input type="radio"
						id="radioOn" name="sendsms" value="on" checked> ON
					</label> <label class="radio-inline"> <input type="radio"
						id="radioOff" name="sendsms" value="off"> OFF
					</label>
				</div>
			</div>
			<div class="row">
				<div class="col-25">
					<label for="country">Country</label>
				</div>
				<div class="col-75">
					<select id="country" name="country">
						<option value="australia">Australia</option>
						<option value="canada">Canada</option>
						<option value="usa">USA</option>
					</select>
				</div>
			</div>
			<div class="row">
				<div class="col-25">
					<label for="subject">Subject</label>
				</div>
				<div class="col-75">
					<textarea id="subject" name="subject"
						placeholder="Write something.." style="height: 200px"></textarea>
				</div>
			</div>
			<div class="row">
				<button class="btn btn-xs btn-info pull-left" type="button"
					onclick="passData()">
					<i class="fa fa-plus"></i> EhatEnterprise Information
				</button>
			</div>
		</form>
	</div>
</body>
</html>