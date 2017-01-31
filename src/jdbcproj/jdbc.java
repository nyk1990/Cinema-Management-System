package jdbcproj;
import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.*;
import javax.servlet.http.*;

// Extend HttpServlet class
public class jdbc extends HttpServlet
{
 
  private String message;

  public void init() throws ServletException
  {
      // Do required initialization
      message = "Hello World";
  }

  public void doGet(HttpServletRequest request,
                    HttpServletResponse response)
            throws ServletException, IOException
  {
      // Set response content type
      response.setContentType("text/html");

      // Actual logic goes here.
      PrintWriter out = response.getWriter();
      out.println("<h1>" + message + "</h1>");
  }
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      // TODO Auto-generated method stub


          response.setContentType("text/html");  
          PrintWriter pw = response.getWriter(); 
          //String connectionURL = "jdbc:mysql://127.0.0.1:3306/newData";// newData is the database  
          //Connection connection;  
          Connection conn=null;
       
         
          String URL = "jdbc:oracle:thin:mpatekar/YCsBUo3.uK3Y@fourier.cs.iit.edu:1521:orcl";
  		String USER = "nkharade";
  		String PASS = "Niks1234";
      //String dbUserName="root";
      //String dbPassword="root";

      try{  
         

    	  Class.forName("oracle.jdbc.driver.OracleDriver");
    	  conn = DriverManager.getConnection(URL, USER, PASS);
        PreparedStatement pst =(PreparedStatement) conn.prepareStatement("CREATE TABLE Users(userID INT PRIMARY KEY,name VARCHAR(50) NOT NULL,emailID VARCHAR(50),Address VARCHAR(1000));");//try2 is the name of the table  

        int i = pst.executeUpdate();
        
        String msg=" ";
        if(i!=0){  
          msg="Table has been inserted";
          pw.println("<font size='6' color=blue>" + msg + "</font>");  


        }  
        else{  
          msg="failed to create the table";
          pw.println("<font size='6' color=blue>" + msg + "</font>");
         }  
        pst.close();
      }  
      catch (Exception e){  
        pw.println(e);  
      }  

}
  public void destroy()
  {
      // do nothing.
  }
}