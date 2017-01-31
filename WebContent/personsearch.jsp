<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page language="java" import="java.util.*"%>

<%@ page import="java.sql.*;"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<Form action="test3.jsp">
		<%!String driverName = "oracle.jdbc.driver.OracleDriver";%>
		<%!String url = "jdbc:oracle:thin:mpatekar/YCsBUo3.uK3Y@fourier.cs.iit.edu:1521:orcl";%>
		<%!String user = "mpatekar";%>
		<%!String psw = "YCsBUo3.uK3Y";%>

		<h3>
			<center>
				<i>Person Information.......</i>
			</center>
		</h3>
		<br>
		<%
			int rid = 0;
			String text1 = request.getParameter("searchbox1");
			out.println("Person information for:" + text1);
		%>
		<table border="1" width="50%" bgcolor="Yellow">
			<th>Person Id</th>
			<th>NAME</th>
			<th>Date Of Birth</th>
			<th>Gender</th>

			<th>Email id</th>
			<th>Address</th>
			<%
				int i1 = 0;
				Connection con1 = null;
				PreparedStatement ps1 = null;
				try {
					Class.forName(driverName);
					con1 = DriverManager.getConnection(url, user, psw);
					String sql = "SELECT * FROM PERSON where NAME='" + text1 + "'";
					ps1 = con1.prepareStatement(sql);
					ResultSet rs = ps1.executeQuery();
					out.println();
			%>

			<%
				while (rs.next()) {
						rid = rs.getInt("PERSONID");
						String name = rs.getString("NAME");
						String date = rs.getDate("DATEOFBIRTH").toString();
						String gender = rs.getString("GENDER");
						String emailid = rs.getString("EMAILID");
						String addr = rs.getString("ADDRESS");
			%>
			<tr>
				<td><%=rid%></td>
				<td><%=name%></td>
				<td><%=date%></td>
				<td><%=gender%></td>
				<td><%=emailid%></td>
				<td><%=addr%></td>

			</tr>
			<%
				}
			%>
			<%
				} catch (SQLException sqe) {
					out.println(sqe);
				}
			%>


		</table>
</body>
</html>