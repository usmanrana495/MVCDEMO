package com.junkyard.servlet;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DisplayServlet
 */
@WebServlet("/DisplayServlet")
public class DisplayServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    Connection conn = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;

    public void init() throws ServletException {

    }

    /**
     * @see HttpServlet#HttpServlet()
     */
    public DisplayServlet() {
        super();
    }

   

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
        final String DB_URL = "jdbc:mysql://localhost:9181/junkyardweb";
        final String User = "root";
        final String Password = "usman";
        try {
        	
        	System.out.println("value in try    "+request.getParameter("id"));
            Class.forName(JDBC_DRIVER);
            Connection conn = DriverManager.getConnection(DB_URL, User, Password);

            Statement st1=conn.createStatement();
			ResultSet rs1 = st1.executeQuery("select image from ad where ad_id=8");
			String imgLen="";
			if(rs1.next()){
				imgLen = rs1.getString(1);
				System.out.println(imgLen.length());
			}	
			rs1 = st1.executeQuery("select image from ad where ad_id=8");
			if(rs1.next()){
				int len = imgLen.length();
				byte [] rb = new byte[len];
				InputStream readImg = rs1.getBinaryStream(1);
				int index=readImg.read(rb, 0, len);	
				System.out.println("index"+index);
				st1.close();
				response.reset();
				response.setContentType("image/png");
				response.getOutputStream().write(rb,0,len);
				response.getOutputStream().flush();				
			}
		}
		catch (Exception e){
			e.printStackTrace();
		}
	}
}