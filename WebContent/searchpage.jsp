<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.*" %>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Page</title>
</head>
<body
	background="http://www.zastavki.com/pictures/2560x1600/2011/3D-graphics_Textures_029787_.jpg">
	<font size="4" color="Red">
		<h3 align="Center">Enter the search criteria to search</h3>
	</font>
	<Form action="result.jsp" method="post" name="searchpage">
	<font size="3" color="white">
		<fieldset>
                <legend>Search Movie</legend>
                <div>
					<b>Enter the movie Name to search:</b><br />
					 <input type="text" name="moviename" /><br />
				</div>
				<div>
					<b>Enter the actor name to search:</b><br />
					<input type="text" name="actor" /><br />
					</div>
					<div>
					<b>Enter the Director name to search:</b><br />
				<input type="text" name="director" /><br /></div>
				
				<div><b>Enter the Writer name to search:</b><br /></td>
					<input type="text" name="writer"
						cols="30" rows="5"></input>
				</div>			

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



	</font>
	</fieldset>
</Form>
</body>
</html>