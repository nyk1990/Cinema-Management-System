<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page language="java" import="java.util.*"%>
<%@ page import="java.sql.*;"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CINEMA MANAGEMENT SYSTEM</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<script src="bootstrap/js/bootstrap.min.css"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css">
<script>
	$(function() {
		$("#tabs").tabs();
	});

	myFunction()
	{
		alert(called);

	}
</script>


<style>
ul {
	float: left;
	width: 200%;
	padding: 0;
	margin: 0;
	list-style-type: none;
}

a {
	filter: alpha(opacity = 80);
	float: left;
	width: 6em;
	text-decoration: inherit;
	color: white;
	background-color: purple;
	padding: 0.6em 0.6em;
	border-right: 2px solid white;
}

a:hover {
	background-color: fuchsia;
}

li {
	display: inline;
}

img {
	display: inline;
}
</style>
</head>
</head>
<body
	background="http://www.zastavki.com/pictures/2560x1600/2011/3D-graphics_Textures_029787_.jpg">
	<Form action="test2.jsp">
		<font color="Blue" size=4> <%!String driverName = "oracle.jdbc.driver.OracleDriver";%>
			<%!String url = "jdbc:oracle:thin:mpatekar/YCsBUo3.uK3Y@fourier.cs.iit.edu:1521:orcl";%>
			<%!String user = "mpatekar";%> <%!String psw = "YCsBUo3.uK3Y";%>

			<center>
				<h1>MaxCinemas</h1>
				<%
 	String user = (String) session.getAttribute("currentSessionUser");
 	out.print("<TOP>Welcome<TOP>" +"   "+"" + user);
 %>
			</center> &nbsp;&nbsp;&nbsp;&nbsp; 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 

			<table align="right">
				<tr>
					<td><b><a href="signup.jsp"> Sign Up </a></b> <b><a
							href="signin.jsp"> Sign In </a></b>
						&nbsp;&nbsp;&nbsp; <br><br>
					<br>
						</Form>
						<Form action="searchservlet" method="post">
							<input type="submit" name="search" value="SEARCH"
								placeholder="searchbutton" /> </></td>
				</tr>
			</table>

		</font> <b><a class='topnav' target='_top' href='AboutUs.jsp'>About
				US </a></b> <b><a class='topnav' target='_top' href='/default.asp'>Schedules
		</a></b> <b><a class='topnav' target='_top' href='/default.asp'>Cinemas
		</a></b> <b><a class='topnav' target='_top' href='/default.asp'>Events
		</a></b> <b><a class='topnav' target='_top' href='ContactUs.jsp'>Contact
				Us </a></b>

		<div class="top_rgt">
			</br>
			<Font Color="white">
				<h2 align="center">
					<b>Now Showing</b>
				</h2>
			</Font>


			<SCRIPT LANGUAGE="JavaScript">
				var num = 1
				img1 = new Image()
				img1.src = "C:\Users\Nikhil\Desktop\interstellar.jpg"
				img2 = new Image()
				img2.src = "C:\Users\Nikhil\Desktop\mockingjay.jpg"
				img3 = new Image()
				img3.src = "C:\Users\Nikhil\Desktop\fury.jpg"
				img4 = new Image()
				img4.src = "C:\Users\Nikhil\Desktop\penguins.jpg"
				img5 = new Image()
				img5.src = "C:\Users\Nikhil\Desktop\The-Imitation-Game.jpg"
				img6 = new Image()
				img6.src = "C:\Users\Nikhil\Desktop\Kill Dill.jpg"
			</SCRIPT>

			<!-- The Image and Form Codes are Below -->

			<CENTER>
				<p>
				<div class="noborder"
					style="overflow: auto; width: 900px; height: 320px;">
					<div class="noborder" style="width: 1860px;">
						<img src="C:\Users\Nikhil\Desktop\interstellar.jpg"
							style="float: left; width: 300px; height: 300px; margin: 0 5px;"
							alt="image name">
					</div>
					<div class="noborder" style="width: 1860px;">
						<img src="C:\Users\Nikhil\Desktop\mockingjay.jpg"
							style="float: left; width: 300px; height: 300px; margin: 0 5px;"
							alt="image name">
					</div>
					<div class="noborder" style="width: 1860px;">
						<img src="C:\Users\Nikhil\Desktop\fury.jpg"
							style="float: left; width: 300px; height: 300px; margin: 0 5px;"
							alt="image name">
					</div>
					<div class="noborder" style="width: 1860px;">
						<img src="C:\Users\Nikhil\Desktop\penguins.jpg"
							style="float: left; width: 300px; height: 300px; margin: 0 5px;"
							alt="image name">
					</div>
					<div class="noborder" style="width: 1860px;">
						<img src="C:\Users\Nikhil\Desktop\The-Imitation-Game.jpg"
							style="float: left; width: 300px; height: 300px; margin: 0 5px;"
							alt="image name">
					</div>
					<div class="noborder" style="width: 1860px;">
						<img src="C:\Users\Nikhil\Desktop\Kill Dill.jpg"
							style="float: left; width: 300px; height: 300px; margin: 0 5px;"
							alt="image name">
					</div>
				</div>
</body>
</html>