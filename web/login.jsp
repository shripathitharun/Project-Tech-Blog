<%@page import="com.tech.blog.entities.Message"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    <style>
        .banner-background
        {
           clip-path: polygon(0% 0%, 100% 0%, 99% 90%, 78% 94%, 53% 89%, 27% 95%, 0 89%);
        }
    
    </style>
    </head>
    <body>
        
        <!--navbarrr-->
        <%@include file="nav_bar.jsp" %>
        
        <main class="d-flex align-items-center primary-background4 banner-background" style="height:70vh;padding-bottom:80px;">
            <div class="container ">
                
                <div class="row">
                  
                    <div class="col-md-4 offset-md-4">
                       
                        <div class="card">
                            
                            <div class="card-header text-center primary-background1">
                                <span class="fa fa-user-plus fa-3x"></span>
                                <p>Login here</p>
                            </div>
                            <%
                                Message m = (Message) session.getAttribute("msg");
                                if (m != null) {
                            %>
                            <div class="alert <%= m.getCssClass() %>" role="alert">
                                <%= m.getContent() %>
                            </div> 


                            <%        
                                    session.removeAttribute("msg");
                                }
                            %>

                           
                            
                            <div class="card-body">
                                <form action="LoginServlet" method="POST">
                                        <div class="form-group">
                                          <label for="exampleInputEmail1">Email address</label>
                                          <input name="email" required type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                          <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                        </div>
                                        <div class="form-group">
                                          <label for="exampleInputPassword1">Password</label>
                                          <input name="password" required type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                                        </div>
                                        <div class="container text-center">
                                        <button type="submit" class="btn btn-primary primary-background2">Submit</button>
                                        </div> 
                                    </form>

                            </div>
                            
                            
                        </div>
                    
                    </div>
                
                </div>         
                
            </div>
                
        
    
        
          
        </main>
        
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <script src="js/myjs.js" type="text/javascript"></script>
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
   </body>
</html>
