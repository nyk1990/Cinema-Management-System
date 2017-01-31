<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page language="java" import="java.util.*" %>
    
<%@ page import="java.sql.*;" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<Form action="booking.jsp">
<%! String driverName = "oracle.jdbc.driver.OracleDriver";%>
<%!String url = "jdbc:oracle:thin:mpatekar/YCsBUo3.uK3Y@fourier.cs.iit.edu:1521:orcl";%>
<%!String user = "mpatekar";%>
<%!String psw = "YCsBUo3.uK3Y";%>

<h3>
<center>
<i>Detailed Movie Information</i>
</center>
</h3><br>

<%
int mid=0;
String text=request.getParameter("movieid");
out.println("Movie infrmation for movie id "+text);
		
%>
<table border="1" width="50%" bgcolor="Yellow">

 <th>Movie Name</th>
 <th>Movie Date </th>
 <th>Movie Time</th>
 <th>Showing Id</th>
 <th>Movie Id</th>
<th>Room Id</th>
<%
int i=0;
Connection con = null;
PreparedStatement ps = null;
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql = "SELECT * FROM PERSON where NAME ='"+text+"'";
ps = con.prepareStatement(sql);
ResultSet rs = ps.executeQuery(); 

%>
<%
while(rs.next())
{

	String mname = rs.getString("TITLE");
	String mdate=rs.getString("MOVIEDATE");
	String mtime=rs.getString("MOVIETIME");
	int sid=rs.getInt("SHOWINGID");
	mid=rs.getInt("MOVIEID");
	int roomid = rs.getInt("ROOMID");
	out.println(mname);
	out.println(mid);
	
%>
<tr>
<td><%=mname %></td>
<td><%=mdate %></td>
<td><%= mtime%></td>
<td><%=sid %></td>
<td><%=mid %></td>
<td><%=roomid %></td>
</tr>
<%
}
%>
<%
}
catch(SQLException sqe)
{ 
out.println(sqe);
}
%>
</table>
<br>

<input type="submit" name="search" value="Book Ticket" placeholder="movieshow"/>
</Form>
</body>

</html>
