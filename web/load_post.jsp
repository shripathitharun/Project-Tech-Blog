<%@page import="java.util.List"%>
<%@page import="com.tech.blog.entities.Post"%>
<%@page import="com.tech.blog.dao.PostDao"%>
<%@page import="com.tech.blog.helper.ConnectionProvider"%>
   
   <div class="row"> 
    <%
        PostDao d=new PostDao(ConnectionProvider.getConnection());
        int cid=Integer.parseInt(request.getParameter("cid"));
        List<Post> posts=null;
        if(cid==0)
        {
            posts=d.getAllPosts();
        }
        else
        {
         //   out.println("its working ");
           
            posts=d.getPostByCatId(cid);
           //  out.println("its working or not");
        }
        if(posts.size()==0)
        {
            out.println("<h3 class='display-3 text-center'>No Post in this Category</h3>");
            return ;
        }
        
        
        for(Post p:posts)
        {
    %>
            
            <div class="col-md-6">
                <div class="card">
                
                    <div class="card-body">
                        <b><%=p.getpTitle()%></b>
                        <p><%=p.getpContent()%></p>    
                        
                    </div>
                    <div class="card-footer text-center">
                        <a href="show_blog_page.jsp?post_id=<%= p.getPid()%>" class="btn btn-outline-light my-2 my-sm-0 primary-background2">Read More... </a>
                            <a href="#!" class="btn btn-outline-light primary-background2 btn-sm"><i class="fa fa-thumbs-up fa-2x" ></i></i><span>1000</span> </a>
                            <a href="#!" class="btn btn-outline-light primary-background2 btn-sm"><i class="far fa-comment fa-2x" ></i></i><span>20</span> </a>
                    
                    </div>
            
                </div>
            </div>      
    <%
        }
    %>
   </div>
     
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   