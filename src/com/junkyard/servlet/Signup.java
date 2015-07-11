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

import com.databaseconn.DatabaseConnection;

/**
 * Servlet implementation class Signup
 */
@WebServlet("/signup")
public class Signup extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      Connection con=DatabaseConnection.connection();
		
      
		
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String password=request.getParameter("password");
		String phone=request.getParameter("phone");
		String email=request.getParameter("email");
		String state=request.getParameter("state");
		String address=request.getParameter("address");
		String city=request.getParameter("city");
      
		System.out.println(city);
		//String r=request.getParameter("param");	
		ResultSet res=null;
		Statement st2=null;
		

		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost/junkyardweb","root","usman");
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		if(con==null)
			System.out.println("NULL VALUE");
		
			
		try {
			
			st2=con.createStatement();
			res=st2.executeQuery("Select email from user where email="+email);
			
	    	if(res.next())
	    	{
	    		
	    		 RequestDispatcher rd=request.getRequestDispatcher("signup.jsp");
	       		  rd.forward(request, response);
	        }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("Exception prprp ");
			e.printStackTrace();
		}
			
		
		
		
		PreparedStatement  st=null;
		PreparedStatement  st1=null;
		try {
			
			st1 = con.prepareStatement("INSERT INTO login (Email,pass) values (?,?) ");
			
			st = con.prepareStatement("INSERT INTO user (fname, lname, phone,Email,city,state,address) values (?,?,?,?,?,?,?) ");
			
			
			
			//if()
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("Exception prprp ");
			e.printStackTrace();
		}
		 // ResultSet res=null;
		try {
			
			st1.setString(1, email);
			st1.setString(2, password);
			 int row1 = st1.executeUpdate();
			
		       // st.execute ();
			st.setString(1, fname);
            st.setString(2, lname);
            st.setString(3, phone);
            st.setString(4, email);
            st.setString(5, city);
            st.setString(6, state);
            st.setString(7, address);
            
            
            
            int row = st.executeUpdate();
            
            if(row>0)
            {
            	 RequestDispatcher rd=request.getRequestDispatcher("second.jsp");
       		  rd.forward(request, response);
            }
		
		
		
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		  

		
		
		
		
	}

}

