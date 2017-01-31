package Loginpack;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
public class loginservlet extends HttpServlet 
{
	static Connection currentCon1 = null;
	 static ResultSet rs1 = null;
	 Statement stmt1 = null;

public void doGet(HttpServletRequest request, HttpServletResponse response) 
                       throws ServletException, java.io.IOException {

try
{        
	PrintWriter out = response.getWriter();


     userbean user = new userbean();
     String username= request.getParameter("un");
     String password= request.getParameter("pw");
     user.setUserName(request.getParameter("un"));
     user.setPassword(request.getParameter("pw"));
     
     
     
     
     user = userdao.login(user);
     

     if (user.isValid())
     {

          HttpSession session = request.getSession(true);       
          session.setAttribute("currentSessionUser",user.username); 
          response.sendRedirect("CinemaFront.jsp"); //logged-in page             
     }

     else 
     {
    	 if(username.equals("admin") && password.equals("admin123"))
         {
        	 HttpSession session = request.getSession(true);       
             session.setAttribute("currentSessionUser","admin"); 
             response.sendRedirect("Admin.jsp"); //logged-in page
        	 
         }
    	 else{
          response.sendRedirect("invalidlogin.jsp"); //error page}
    	 }
        /*  String searchQuery2 =
      
        "select * from STAFF where USERNAME='" + username+ "' AND PASSWORD='"+ password+ "'";
          
          System.out.println("Your user name is " + username);          
          System.out.println("Your password is " + password);
          System.out.println("Query: "+searchQuery2);
          
          HttpSession session1 = request.getSession(true);       
          session1.setAttribute("currentSessionUser",user.username); 
          response.sendRedirect("Admin.jsp"); //logged-in page
*/
     } 
}

catch (Throwable theException)      
{
     System.out.println(theException); 
}
       }
    }
