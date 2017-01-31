<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registration Form</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="css/bootstrap-responsive.css">
<link rel="stylesheet" type="text/css"
	href="css/bootstrap-responsive.min.css">
</head>
<body>

	<h1 align="center">
		<b>REGISTRATION FORM</b>
	</h1>
	<form action="test2.jsp" method="post">

		<div>
			<label for="inputFirstname">First Name </label>
			<div>
				<input type="text" name="firstname" maxlength="12"
					placeholder="firstname"></input>
			</div>
		</div>

		<div>
			<label for="inputLastname">Last Name </label>
			<div>
				<input type="text" name="lastname" maxlength="12"
					placeholder="lastname"></input>
			</div>
		</div>

		<div>
			<label for="inputMobile">Mobile</label>
			<div>
				<input type="text" name="mobile" maxlength="10"
					placeholder="Ex:95xxxx4104"></input>

			</div>
		</div>

		<div>
			<label for="inputEmail">E-mail</label>
			<div>
				<input type="text" name="email" maxlength="50"
					placeholder="rakesh@gmail.com"></input>
			</div>
		</div>

		<div>
			<label for="gender">Gender</label>
			<div>
				<input type="radio" name="optionsRadios" id="optionsRadios1"
					value="Male" checked>Male <input type="radio"
					name="optionsRadios" id="optionsRadios2" value="Female">Female
			</div>
		</div>

		<div>
			<label for="inputAddress">Address </label>
			<div>
				<input type="text" name="address" maxlength="70" id="address"
					placeholder="Address"></input>
			</div>
		</div>

		<div>
			<label for="inputCity">City </label>
			<div>
				<input type="text" name="city" id="city" placeholder="Noida"></input>
			</div>
		</div>

		<div>
			<label for="inputState">State </label>
			<div>
				<input type="text" id="state" name="state" id="state"
					placeholder="Delhi"></input>
			</div>
		</div>

		<div>
			<div>
				<input type="reset" value="Reset" /> <input type="submit"
					value="Submit" />
			</div>
		</div>

	</form>
</body>
</html>
</body>
</html>