package com.junkyard.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.databaseconn.AdData;
import com.databaseconn.DatabaseConnection;

/**
 * Servlet implementation class Detail
 */
@WebServlet("/Detail")
public class Detail extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Connection con=DatabaseConnection.connection();
		
		String r=request.getParameter("param");	
		
		String title="",des="",city="",address="",state="",price="",zip="";
		Date date=null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost/junkyardweb","root","usman");
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		 
		if(con==null)
			System.out.println("NULL VALUE");
		
		System.out.println("value   "+r);
		
		
		
		Statement st=null;
		try {
			
			
			st = con.createStatement();
			
			//if()
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		  ResultSet res=null;
		try {
			res = st.executeQuery("SELECT * FROM  ad where ad_id='" + r + "'");
			if(res==null)
			System.out.print("sqlquery NULL");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.print("excption");
			e.printStackTrace();
		}
		
		try {
			if(res.next()){
			title=res.getString("title");
			//System.out.println(title+"      title");
			des=res.getString("descp");
			city=res.getString("city");
			date=res.getDate("date_ad");
			address=res.getString("address");
			state=res.getString("state");
			price=res.getString("price");
			zip=res.getString("zip");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("RS EXCEPTIN  ");
			e.printStackTrace();
		}
		
		 
		//System.out.println(title);
		  
		  request.setAttribute("title", title);
		  request.setAttribute("des", des);
		  request.setAttribute("city", city);
		  request.setAttribute("date", date);
		  request.setAttribute("state", state);
		  request.setAttribute("address", address);
		  request.setAttribute("zip", zip);
		  request.setAttribute("price", price);
		  request.setAttribute("date", date);
		  request.setAttribute("id", r);
		  RequestDispatcher rd=request.getRequestDispatcher("Detail.jsp");
		  rd.forward(request, response);
	}

		
		
	}


