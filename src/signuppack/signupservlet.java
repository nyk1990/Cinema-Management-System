package signuppack;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.Random;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class indexServelet
 */
public class signupservlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	public Connection conn1 = null;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public signupservlet() 
    {
        super();
        // TODO Auto-generated constructor stub
    }

    boolean getConnection()
    {
    	 //conn1 = null;
	        
 		try 
 		{
 			   Class.forName("oracle.jdbc.driver.OracleDriver");
 		}
 			catch(ClassNotFoundException ex) 
 		    {
 			   System.out.println("Error: unable to load driver class!");
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
 		finally
 		{
 			  try {
 	                if (conn1 != null && !conn1.isClosed())
 	                {
 	                    //conn1.close();
 	                    System.out.println("Connection Established");
 	                    return true;
 	                }
 			      }
 			  catch (SQLException ex) 
 			  {
 	                ex.printStackTrace();
 	          }
 	    } 
return false;

    }
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		boolean flag=getConnection();
		 PrintWriter out = response.getWriter();
		if(flag==true)
		{
			out.println("connection established");
		}
		else
		{
			out.println("no connection established");
		}
		//String colorstr=request.getParameter("color");
		String name=request.getParameter("name");
		String emailid=request.getParameter("emailid");
		String address=request.getParameter("addr");
        Random randomGenerator = new Random(); 
	    int userId = randomGenerator.nextInt(100000000);
	    String password=request.getParameter("pwd");
		 out.println(name +"   "+emailid+"   "+address+" "+password);
		 
		// Movies mov=new Movies();
		 String SQLCommand = "INSERT INTO Users "
			        + "(userId,name,emailId,Address,Password) " + "VALUES "
			        + "("+userId+",'"+name+"','"+emailid+"','"+address+"' ,'"+password+"')";
			    // Ccon = DriverManager.getConnection(url);
			   // String insert = "INSERT INTO Movies (Mo) VALUES (?, ?, ?, ?)";  
		        try {
					//PreparedStatement ps = conn1.prepareStatement(insert);
					 Statement stmt = conn1.createStatement();
					    stmt.execute(SQLCommand);
					conn1.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			    
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// TODO Auto-generated method stub
	}

}

