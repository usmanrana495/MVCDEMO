package com.databaseconn;

import java.sql.Connection;
import java.sql.DriverManager;



public class DatabaseConnection {
	
	public static Connection connection()
	{ 
	try
	{
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		
		return DriverManager.getConnection("jdbc:mysql://localhost:8080/junkyard","root","usman");
				}catch(Exception e)
	  			{
					return null;
					
					//throw new Error(e);
					
				}

	}
	public static boolean close(Connection c)
	{
		try
		{
			c.close();
			return true;
		}catch(Exception e)
		{
			return false;
		}
		
		
	}


}
