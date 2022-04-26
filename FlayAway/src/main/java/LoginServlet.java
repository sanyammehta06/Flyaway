

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	   
		Connection connection;
		   PreparedStatement pstmt;
				public void dbInit() {
				
				try {
					Class.forName("com.mysql.jdbc.Driver");
					connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/flyaway", "root", "root");
				
					System.out.println("connection");
				} catch (SQLException | ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					System.out.println("Some Error occured :"+ e);
				}
				
			}
		       
		   
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		Object flight= session.getAttribute("flightno");
		
		PrintWriter out = response.getWriter();
				
		dbInit();
		String UserName = request.getParameter("email");
		String Password = request.getParameter("password");
		
		try {
			
			//String sqlQuery="select * from user where email=? and password=?";
			  PreparedStatement pstmt=connection.prepareStatement("select * from flyaway.user where email=? and password=?");
			  
			  pstmt.setString(1, UserName);
			  pstmt.setString(2, Password);
			  
	   
	    	  ResultSet rs=pstmt.executeQuery();
	    	  
	    	  if(rs.next()) {
	    		  request.getSession().setAttribute(UserName, Password);
	    		  out=response.getWriter();
	    		  out.println("Welcome "+ rs.getString("fname")+"  "+rs.getString("lname"));
	    		  session.setAttribute("flightno", flight);
	    		 response.sendRedirect("Payment.jsp");
	
	    	  }
	    	  else {
	    		  out.println("Please enter valid UserName and Password");
	    		//response.sendRedirect("Login.jsp");
	    	  }
	    	  
		} catch (SQLException e) {
			
			out.print("something went wrong"+e);
		}
	}

}
	
