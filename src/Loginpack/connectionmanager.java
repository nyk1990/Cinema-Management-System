package Loginpack;

	import java.sql.*;
	import java.util.*;


	   public class connectionmanager 
	   {

	      static Connection con;
	      static String url;

	      public static Connection getConnection()
	      {

	         try
	         {

	            Class.forName("oracle.jdbc.driver.OracleDriver");
	            //System.out.println(" Define the URL");

	             String url= "jdbc:oracle:thin:mpatekar/YCsBUo3.uK3Y@fourier.cs.iit.edu:1521:orcl";
	            // assuming "DataSource" is your DataSource name

	           // Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

	            try
	            {   


	              //  System.out.println(" Enter the username");
	                String username= "mpatekar"; 
	                //System.out.println(" Enter the password");
	                String password= "YCsBUo3.uK3Y";
	                //System.out.println(" Define the connection");
	                con = DriverManager.getConnection(url,username,password); 
	                System.out.println(" connection done" +con);


	            }

	            catch (SQLException ex)
	            {
	               ex.printStackTrace();
	            }
	         }

	         catch(ClassNotFoundException e)
	         {
	            System.out.println(e);
	         }

	      return con;
	}
	      
}



