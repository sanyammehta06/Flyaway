

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/HomePageServlet")
public class HomePageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public HomePageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String origin=request.getParameter("origin");
		String Destination=request.getParameter("destination");
		String date=request.getParameter("date");
		String totalPerson=request.getParameter("totalPerson");
		Connection connection;
		 
				try {
					Class.forName("com.mysql.jdbc.Driver");
					connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/flyaway", "root", "root");
					PreparedStatement pstmt=connection.prepareStatement("select * from flightdetails where origin=? and destination=?");
					pstmt.setString(1, origin);
					pstmt.setString(2, Destination);
				
					ResultSet rs=pstmt.executeQuery();
					PrintWriter out=response.getWriter();
			
					connection.close();
					FlightsEntity flightdetail=new FlightsEntity();
					request.setAttribute("origin", origin);
					request.setAttribute("destination", Destination);
					request.setAttribute("date", date);
					request.setAttribute("totalPerson", totalPerson);
					
					RequestDispatcher dispatcher=request.getRequestDispatcher("/Flight_Details.jsp");
					dispatcher.forward(request, response);
					System.out.println("connection");
				} catch (SQLException | ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					System.out.println("Some Error occured :"+ e);
				}
				
			
	}

}
