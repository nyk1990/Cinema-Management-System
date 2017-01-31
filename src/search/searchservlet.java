
package search;
import java.io.*;

import javax.naming.directory.SearchResult;
import javax.servlet.*;
import javax.servlet.http.*;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.*;



public class searchservlet extends HttpServlet {


  public Connection getConnect()
  {
   Connection conn1 = null;
	
	 try 
		{
			   Class.forName("oracle.jdbc.driver.OracleDriver");
		}
			catch(ClassNotFoundException ex) 
		    {
			   System.out.println("Error: can't load driver class!");
			   System.exit(1);
			}
		 String URL = "jdbc:oracle:thin:mpatekar/YCsBUo3.uK3Y@fourier.cs.iit.edu:1521:orcl";
		String USER = "mpatekar";
		String PASS = "YCsBUo3.uK3Y";
		 try {
			 conn1 = DriverManager.getConnection(URL, USER, PASS);
		    } 
		catch (SQLException e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn1;
  
  }
 
  public void doPost(HttpServletRequest request,
                    HttpServletResponse response)
      throws ServletException, IOException {
    
		try {
	
	int flag=0;
	HttpSession session = request.getSession(true);
	
	String actor=request.getParameter("act");
	String writer=request.getParameter("wri");
	String director=request.getParameter("dir");
	String moviename=request.getParameter("mov");
	
	
	//String password=request.getParameter("password");
	
	  //response.getWriter().println("src post");
	  Connection conn1=getConnect();
	
		java.sql.Statement  stmt =  conn1.createStatement();
		java.sql.Statement  stmt1 =  conn1.createStatement();
	    String sql = "select DISTINCT(m.TITLE),m.MOVIEID from MOVIES m,PERSON p where m.MOVIEID=p.MOVIEID  and (p.NAME='"+actor+"' or p.NAME='"+writer+"' or  p.NAME='"+director+"') ";
		response.getWriter().println("Query"+sql);
		ResultSet rs = stmt.executeQuery(sql);
		ResultSet rs1;
		String actor1="";
		String director1="";
		String writer1="";
		
		List<String> moviesearchtest = new ArrayList<String>();
		String tempsearch="";
		
		                while(rs.next()){
						 
						String movie  = rs.getString("TITLE");
			 			response.getWriter().println(movie);
						
						sql="select p.NAME from PERSON p,MOVIES m,ACTOR ac where p.MOVIEID=m.MOVIEID and p.PERSONID=ac.PERSONID and m.TITLE='"+movie+"'";
						//response.getWriter().println("Query1"+sql);
						rs1=stmt1.executeQuery(sql);
						
						while(rs1.next()){
						
						actor1=actor1+","+rs1.getString("NAME");
						
						}
					
						sql="select p.NAME from PERSON p,MOVIES m,DIRECTOR d where p.MOVIEID=m.MOVIEID and p.PERSONID=d.PERSONID and m.TITLE='"+movie+"'";
						//response.getWriter().println("Query1"+sql);
						rs1=stmt1.executeQuery(sql);
					
						while(rs1.next()){
						
						director1=director1+","+rs1.getString("NAME");
						
						}
						
						sql="select p.NAME from PERSON p,MOVIES m,WRITER w where p.MOVIEID=m.MOVIEID and p.PERSONID=w.PERSONID and m.TITLE='"+movie+"'";
						//response.getWriter().println("Query3"+sql);
						rs1=stmt1.executeQuery(sql);
						
						while(rs1.next()){
						
						writer1=writer1+","+rs1.getString("NAME");
					
						
						}
						
						
					tempsearch=movie+"-"+actor1+"-"+director+"-"+writer1;
					
					response.getWriter().println(tempsearch);
					
					moviesearchtest.add(tempsearch);	
										
	                  }

		request.setAttribute("result",moviesearchtest);
for(int i=0;i<moviesearchtest.size();i++)

{
	PrintWriter out=response.getWriter();
	out.print(moviesearchtest);
}
		
		String des="";
		des = "/searchpage.jsp";
		RequestDispatcher rd = getServletContext().getRequestDispatcher(des);
		rd.forward(request, response);
		response.getWriter().println("a"+actor1);
		response.getWriter().println("w:"+writer1);
		response.getWriter().println("w:"+director1);
		
		//response.getWriter().println("w:"+genre1);
		
			
	 }
	  catch (SQLException ex) 
			  {
	                ex.printStackTrace();
	          }
			  
	
	}
}
