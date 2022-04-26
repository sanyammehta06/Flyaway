

import java.io.IOException;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
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
	       
	   

		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		}

		
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  PrintWriter out=response.getWriter();
		 
		  
		 try {
			  String email=request.getParameter("email");
			  String  fname=request.getParameter("fname");
			  String lname=request.getParameter("lname");
			  Integer age=Integer.parseInt(request.getParameter("age"));
			  String contact=request.getParameter("contact");
			  String gender=request.getParameter("gender");
			  String password=request.getParameter("password");
			  String country=request.getParameter("country");
			  
			dbInit();
		
			//  String sqlQuery="insert into flyaway.user(email,fname,lname,age,contact,gender,password,country) values(?,?,?,?,?,?,?,?)";
			  PreparedStatement pstmt=connection.prepareStatement("insert into flyaway.user(email,fname,lname,age,contact,gender,password,country) values(?,?,?,?,?,?,?,?)");
	    	 // pstmt=connection.prepareStatement(sqlQuery);
			  
			  pstmt.setString(1, email);
			  pstmt.setString(2,fname);
			  pstmt.setString(3, lname);
			  pstmt.setInt(4, age);
			  pstmt.setString(5, contact);
			  pstmt.setString(6, gender);
			  pstmt.setString(7, password);
			  pstmt.setString(8, country);
			  
			  pstmt.executeUpdate();
			  out.print("Registeration Successful");	  
		 }catch (Exception e) {
			out.print("something went wrong please try again");
		}	  
		
	}
}