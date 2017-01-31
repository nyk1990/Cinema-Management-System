<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign Up</title>
</head>
<body
	background="http://www.zastavki.com/pictures/2560x1600/2011/3D-graphics_Textures_029787_.jpg">
	<Font color="Red" size="6">
		<h3 align="center">Register</h3>
	</Font>
	<script type="text/javascript" language="javascript">
		function valname() {
			var nm = document.submit.name.value;
			if (nm == null || nm == "") {
				alert("Please Enter Your Full Name");
				document.submit.name.focus();
				return;
			}

			var pattern = /^([a-zA-Z])+$/
			if (!pattern.test(nm)) {
				alert("Name is not valid!!Only letters are allowed!!");
				document.submit.name.focus();
				return;
			}
		}

		function valemail() {
			var em = document.submit.emailid.value;
			if (em == null || em == "") {
				alert("Please Enter Your emailid");
				document.submit.emailid.focus();
				return;
			}
			var pattern = /^([a-zA-Z_.-])+([a-zA-Z0-9_.-])+@(([a-zA-Z0-9-])+.)+([a-zA-Z0-9]{2,4})+$/
			if (!pattern.test(em)) {
				alert("Emailid is not valid");
				document.submit.emailid.focus();
				return;
			}
		}
	</script>
</head>
<body>

	<form name="submit" action="signupservlet">
		<div id="wrapper"></div>

		<div id="main"></div>
		<div class="left" id="content"></div>
		<div id="content_inner">

			<p>
				<br />
			</p>
			<p>
				<br />
			</p>
			<p>
				<br />
			</p>
			<div class="box_title">
				<font size="4"> <br /></font>
			</div>
			<font size="5">
				<table width="400" height="300" border="1" bgcolor="#986967"
					align="center">
					<tbody>
						<tr align="left">
							<td align="center"><b>Name:</b><br /></td>
							<td align="center">&nbsp; <input type="text" name="name"
								onblur="  valname()" /><br /></td>
						</tr>
						<tr align="left">
							<td><b>Email Id:</b><br /></td>
							<td align="center">&nbsp;<input type="text" name="emailid"
								onblur=" valemail()" /><br /></td>
						</tr>
						<tr align="left">
							<td><b>Password:</b><br /></td>
							<td align="center">&nbsp;<input type="text" name="pwd"
								onblur=" valpwd()" /><br /></td>
						</tr>

						<tr align="left">
							<td><b>Address:</b><br /></td>
							<td align="center">&nbsp;<textarea name="addr" cols="30"
									rows="5"></textarea></td>
						</tr>
					</tbody>
				</table>
			</font>
			<div align="center">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
					align="middle" type="submit" value="Submit" style="text: size=3" />
				&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
				&nbsp;&nbsp; &nbsp;&nbsp; <br />
			</div>
			<br />
			<br />
		</div>
		<br />
		<p>
		<p>
			<br />
		</p>
		<p></p>
	</form>
</body>
</html>