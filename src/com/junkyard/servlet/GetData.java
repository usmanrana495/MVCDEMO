package com.junkyard.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.databaseconn.AdData;
import com.databaseconn.DatabaseConnection;

/**
 * Servlet implementation class GetData
 */
@WebServlet("/GetData")
public class GetData extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		Connection con=null;
		
		String r=request.getParameter("param");	
		Statement st1=null;
		Statement st2=null;
		ResultSet res=null;
		int cat=0;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost/junkyardweb","root","usman");
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		if(con==null)
			System.out.println("NULL VALUE");
		
		System.out.println(r);
		
		
		
			try {
			
			
			st1 = con.createStatement();
			
			res = st1.executeQuery("SELECT cate_id FROM  category where name='" + r + "'");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
			try {
				if(res.next())
					cat=res.getInt("cate_id");
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		
		
		
		List<AdData> list=new ArrayList<AdData>();
		
		
		try {
			
			
			st1 = con.createStatement();
			
			//if()
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		  
		try {
			res = st1.executeQuery("SELECT title,descp,date_ad,city,state,address,ad_id,cate_id,price,phone,image FROM  ad where cate_id='" + cat + "'");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		  try {
			while (res.next()) {

				  AdData ad=new AdData();
				  ad.settitle(res.getString("title"));
				  ad.setdes(res.getString("descp"));
				  ad.setcity(res.getString("city"));
				  ad.setdate(res.getDate("date_ad"));
				  ad.setstate(res.getString("state"));
				  ad.setaddress(res.getString("address"));
				  ad.setid(res.getInt("ad_id"));
				  ad.setcate(res.getInt("cate_id"));
				  ad.setprice(res.getString("price"));
				  ad.setphone(res.getString("phone"));
			  list.add(ad);
			  



			  }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//if(r.equals("mobile"))
		//response.sendRedirect("second.jsp");
		//else
		//	response.sendRedirect("Cata.jsp");
		  
		  request.setAttribute("list", list);
		  RequestDispatcher rd=request.getRequestDispatcher("second.jsp");
		  rd.forward(request, response);
	}
	
}