package com.tech.blog.dao;
import com.tech.blog.entities.User;
import java.sql.*;

public class UserDao {
    private Connection con;

    public UserDao(Connection con)
    {
        this.con = con;
    }
   
    //method to insert userr to data base;
    
    public boolean saveUser(User user)
    {
        boolean f=false;
        try 
        {
            //user will enter into database
            String query="insert into user(name,email,password,gender,about) values(?,?,?,?,?)";
            PreparedStatement pstmt=this.con.prepareStatement(query);
            pstmt.setString(1, user.getName());
            pstmt.setString(2, user.getEmail());
            pstmt.setString(3, user.getPassword());
            pstmt.setString(4, user.getGender());
            pstmt.setString(5, user.getAbout());
            pstmt.executeUpdate();
            f=true;
               
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        return f;
    }
//get user by useremail and userpassword:   
       
        public User getUserByEmailAndPassword(String email,String password)
        {
            User user=null;
            try
            {
                String query="select * from user where email =? and password =?"; 
                PreparedStatement pstmt= con.prepareStatement(query);
                pstmt.setString(1,email);
                pstmt.setString(2,password);
                //data store here in form of resultset  
                ResultSet set=pstmt.executeQuery();
                //asume only single uesr thats why use if 
                if(set.next())
                {
                    user =new User();
                    //data fetch kiya user DB
                    String name=set.getString("name");
                    // set to user object;
                    user.setName(name);
                    
                    int  id=set.getInt("id");
                    // set to user object;
                    user.setId(id);
                    user.setEmail(set.getString("email"));
                    user.setPassword(set.getString("password"));
                    user.setGender(set.getString("gender"));
                    user.setAbout(set.getString("about"));
                    user.setDateTime(set.getTimestamp("rdate"));
                    user.setProfile(set.getString("profile"));
                }
            } 
            catch (Exception e)
            {
                e.printStackTrace();
            }
            return user;
        }
      
}
