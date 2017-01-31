<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page language="java" import="java.util.*"%>

<%@ page import="java.sql.*;"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Details Of User</title>
</head>
<body>
	<Form action="test3.jsp">
		<%!String driverName = "oracle.jdbc.driver.OracleDriver";%>
		<%!String url = "jdbc:oracle:thin:mpatekar/YCsBUo3.uK3Y@fourier.cs.iit.edu:1521:orcl";%>
		<%!String user = "mpatekar";%>
		<%!String psw = "YCsBUo3.uK3Y";%>

		<h3>
			<center>
				<i>Movie Information.......</i>
			</center>
		</h3>
		<br>
		<%
			int id = 0;
			String text = request.getParameter("searchbox");
			out.println("Movie information for:" + text);
		%>
		<table border="1" width="50%" bgcolor="Yellow">
			<th>Movie Name</th>
			<th>Movie Id</th>
			<th>PG Rating</th>
			<th>Movie Length</th>
			<th>Genre</th>
			<th>Release Year</th>
			<%
				int i = 0;
				Connection con = null;
				PreparedStatement ps = null;
				try {
					Class.forName(driverName);
					con = DriverManager.getConnection(url, user, psw);
					String sql = "SELECT * FROM MOVIES where TITLE='" + text + "'";
					ps = con.prepareStatement(sql);
					ResultSet rs = ps.executeQuery();
			%>

			<%
				while (rs.next()) 
				{
						String fname = rs.getString("TITLE");
						id = rs.getInt("MOVIEID");
						String pgrating = rs.getString("PGRATING");
						int len = rs.getInt("LENGTH");
						String genre = rs.getString("GENRE");
						int year = rs.getInt("RELEASEYEAR");
			%>
			<tr>
				<td><%=fname%></td>
				<td><%=id%></td>
				<td><%=pgrating%></td>
				<td><%=len%></td>
				<td><%=genre%></td>
				<td><%=year%></td>
			</tr>
			<%
				}
			%>

			<%
				} 
				catch (SQLException sqe) 
				{
					out.println(sqe);
				}
			%>
		</table>
		<br> <input type="text" name="movieid" value=<%=id%> /> <input
			type="submit" name="search" value="Movie Shows"
			placeholder="movieshow" />
	</Form>
</body>

</html>