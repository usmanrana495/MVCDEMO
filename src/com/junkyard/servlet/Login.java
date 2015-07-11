package com.junkyard.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.databaseconn.DatabaseConnection;

/**
 * Servlet implementation class Login
 */
@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Connection con=DatabaseConnection.connection();
		
		String name=request.getParameter("name");
		String pass=request.getParameter("password");
		
		PreparedStatement  pst=null;
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost/junkyardweb","root","usman");
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		
		Statement st=null;
		 
         try {
			
			
			pst = con.prepareStatement("SELECT * FROM  login where pass=? And email=?");
			
			//if()
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("Exception prprp ");
			e.printStackTrace();
		}
try{


      		pst.setString(1, pass);
      				pst.setString(2, name);


      					ResultSet row = pst.executeQuery();
      					
      					//if()

      					if(row.next())
      						
      					{
      						HttpSession session=request.getSession();  
      				        session.setAttribute("name",name);  
      				        
      				        
      						RequestDispatcher rd=request.getRequestDispatcher("Home.jsp");
      						rd.forward(request, response);
      					}
//res = st.executeQuery("INSERT INTO ad (title, descp, city,price,address,state,zip,phone) values (?, ?, ?) ");
} catch (SQLException e) {
// TODO Auto-generated catch block
e.printStackTrace();
}
		 
		
		
		
		
		
	}

}
