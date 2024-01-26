package com.tech.blog.helper;
import java.sql.*;

public class ConnectionProvider {
private static Connection con;
public static Connection getConnection()
{
    try
    {
        
        if(con==null)
        {
        //driver load;
       // Class.forName("com.sql.cj.jdbc.Driver");
        Class.forName("com.mysql.cj.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/techblog","root","Mayank@123");
        }
    
    }
    catch (Exception e)
    {
        e.printStackTrace();
    }
return con;
}
}
