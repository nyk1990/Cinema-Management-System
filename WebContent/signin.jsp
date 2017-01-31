<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Sign In</title>
<script language="Javascript">
	
</script>
</head>
<body
	background="http://www.zastavki.com/pictures/2560x1600/2011/3D-graphics_Textures_029787_.jpg">
	<font color="Red" size=3>
		<center>
			<h1>Sign In</h1>
		</center>
	</font>
	<Form name="Signinpage" action="loginservlet">

		<table align="center"
			background="http://3.bp.blogspot.com/-4wd-HNGPjq0/T0zbOn6GOZI/AAAAAAAAHZI/WojyG4pvYBk/s640/kk_happyheart.jpg">
			<tr>
				<td>
					<h4>Please select your user type.</h4>

					<div id="A">
						<br />
						<table align="center"
							background="http://3.bp.blogspot.com/-4wd-HNGPjq0/T0zbOn6GOZI/AAAAAAAAHZI/WojyG4pvYBk/s640/kk_happyheart.jpg">
							<tr>
								<td><b>User Name</b></td>
								<td><input type="text" name="un" /></td>
							</tr>

							<tr>
								<td><b>Password</b></td>
								<td><input type="password" name="pw" /> <br />
								<td>
							</tr>

							<tr>
								<td><input type="checkbox" />Keep me signed in</td>
							</tr>
							<tr>
								<td colspan="2">
									<center>
										<input type="submit" value="Sign In" /> <b> <a
											href="booking.jsp">Forgot Password</a>
									</center>
									</b>
								</td>
							</tr>
						</table>
					</div>

					</Form>
</body>
</html>