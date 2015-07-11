package com.junkyard.servlet;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.databaseconn.DatabaseConnection;

/**
 * Servlet implementation class AddData
 */
@WebServlet("/AddData")
@MultipartConfig
public class AddData extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
		String city=request.getParameter("item");
		String title=request.getParameter("title");
		String price=request.getParameter("price");
		String phone=request.getParameter("phonenumber");
		String state=request.getParameter("state");
		String zip=request.getParameter("zip");
		String address=request.getParameter("address");
		String des=request.getParameter("des");
		String cata=request.getParameter("cate");
		
		PreparedStatement  pst=null;
		Statement  st=null;
		
		int cate_id=0;
		
		System.out.println(city);
		System.out.println(title);
		System.out.println(price);
		System.out.println(phone);
		System.out.println(zip);
		System.out.println(cata);
		
		ResultSet res=null;
		
       Connection con=DatabaseConnection.connection();
		
		//String r=request.getParameter("param");	
		
  //     System.out.println(cata);
		

		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost/junkyardweb","root","usman");
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		if(con==null)
			System.out.println("NULL VALUE");
		
		InputStream inputStream = null; // input stream of the upload file
        
        // obtains the upload file part in this multipart request
        Part filePart = request.getPart("photo");
        if (filePart != null) {
            // prints out some information for debugging
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());
             
            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();
        }
		 
        if (filePart == null) {
System.out.println("file part is null");
        }
		 
		 
		 try {
				
				
				st = con.createStatement();//Statement("Select cate_id from category where name="+city);
				
				res = st.executeQuery("Select cate_id from category where name='" + cata + "'");
				
				 if(res.next())
				 {
					 cate_id=res.getInt("cate_id");
				 System.out.println("id  "+cate_id);
				 }
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				System.out.println("Exception prprp ");
				e.printStackTrace();
			}
		 
		 
		 
	
		 
		
		try {
			
			
			pst = con.prepareStatement("INSERT INTO ad (title, descp,date_ad, city,cate_id,price,address,state,zip,phone,email,image) values (?,?,?,?,?,?,?,?,?,?,?,?) ");
			
			//if()
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("Exception prprp ");
			e.printStackTrace();
		}
		 // ResultSet res=null;
		try {
			if (inputStream != null) {
                // fetches input stream of the upload file for the blob column
                pst.setBlob(12, inputStream);
            }
 
            // sends the statement to the database server
           // int row = statement.executeUpdate();
           // if (row > 0) {
            //    message = "File uploaded and saved into database";
           // }
           // }
			
			String value = (String)request.getSession().getAttribute("name");
			if(value==null)
				System.out.println("session is null");
			
		       // st.execute ();
			pst.setString(1, title);
            pst.setString(2, des);
            pst.setString(3, "2011-11-11");
            pst.setString(4, city);
            pst.setInt(5,cate_id );
            pst.setString(6, price);
            pst.setString(7, address);
            pst.setString(8, state);
            pst.setString(9, zip);
            pst.setString(10, phone);
            pst.setString(11, value);
            
            int row = pst.executeUpdate();
            
            if(row>1)
            {
            	 RequestDispatcher rd=request.getRequestDispatcher("AdPosted.jsp");
       		  rd.forward(request, response);
            }
			//res = st.executeQuery("INSERT INTO ad (title, descp, city,price,address,state,zip,phone) values (?, ?, ?) ");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		  

		
		
		
		
	}

}
