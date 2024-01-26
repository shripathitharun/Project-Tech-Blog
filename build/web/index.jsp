<%@page import="com.tech.blog.helper.ConnectionProvider"%>
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
        <!--navigation bar--> 
        <%@include file="nav_bar.jsp"%>   
        <!--//banner part started-->
        <div class="container-fluid m-0 p-0 ">
            <div class="jumbotron primary-background1 banner-background">
                <div class="container">
                
                <h3 class="display-3 ">Welcome to TechBlog</h3>
                <p>Computer programming is the process of designing and building an executable computer program to accomplish a specific computing result.</p>
                <p>telligible to programmers, rather than machine code, which is directly executed by the central processing unit. The purpose of programming is to find a sequence of instructions that will automate.</p>
                <button class="btn btn-outline-light my-2 my-sm-0 lg primary-background2"><span class="fa fa-user-plus"></span>&nbsp;&nbsp;start! its Free </button>
                <a href="login.jsp"class="btn btn-outline-light my-2 my-sm-0 primary-background2"><span class="fa fa-user-circle fa-spin"></span>&nbsp;&nbsp;Login</a>
                    
                </div>
            </div>
                 
        </div>
        <!--/Card part start -->
        <br>
        <div class="container ">
            
            <div class="row mb-2">
               
                <div class="col-md-4">
                    <div class="card" >
                           <div class="card-body">
                          <h5 class="card-title">Java Programing</h5>
                          <p class="card-text">Java is a high-level, class-based, object-oriented programming language that is designed to have as few implementation dependencies as possible.</p>
                          <a href="login.jsp" class="btn btn-outline-light my-2 my-sm-0 primary-background2">Read More...</a>
                        </div>
                      </div>
               </div>
               <div class="col-md-4">
                    <div class="card" >
                           <div class="card-body">
                          <h5 class="card-title">Python Programing</h5>
                          <p class="card-text">Python is an interpreted high-level general-purpose programming language. Python's design philosophy emphasizes code readability with its notable use of significant indentation. </p>
                          <a href="login.jsp" class="btn btn-outline-light my-2 my-sm-0 primary-background2">Read More...</a>
                        </div>
                      </div>
               </div>
               <div class="col-md-4">
                    <div class="card" >
                           <div class="card-body">
                          <h5 class="card-title">C++ programing</h5>
                          <p class="card-text">C++ is a general-purpose programming language created by Bjarne Stroustrup as an extension of the C programming language, or "C with Classes".</p>
                          <a href="login.jsp" class="btn btn-outline-light my-2 my-sm-0 primary-background2">Read More...</a>
                        </div>
                      </div>
               </div>
                    
            </div>   
         <div class="row">
               
                <div class="col-md-4">
                    <div class="card" >
                           <div class="card-body">
                          <h5 class="card-title">Bootstrap</h5>
                          <p class="card-text">Bootstrap is a free and open-source CSS framework directed at responsive, mobile-first front-end web development. It contains CSS- and JavaScript-based design templates for typography, forms, buttons, navigation, and other interface components.</p>
                          <a href="login.jsp" class="btn btn-outline-light my-2 my-sm-0 primary-background2">Read More...</a>
                        </div>
                      </div>
               </div>
               <div class="col-md-4">
                    <div class="card" >
                           <div class="card-body">
                          <h5 class="card-title">Javascript</h5>
                          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                          <a href="#" class="btn btn-outline-light my-2 my-sm-0 primary-background2">Read More...</a>
                        </div>
                      </div>
               </div>
               <div class="col-md-4">
                    <div class="card" >
                           <div class="card-body">
                          <h5 class="card-title">AngularJS</h5>
                          <p class="card-text">Angular is a TypeScript-based open-source web application framework led by the Angular Team at Google and by a community of individuals and corporations. Angular is a complete rewrite from the same team that built AngularJS.</p>
                          <a href="login.jsp" class="btn btn-outline-light my-2 my-sm-0 primary-background2">Read More...</a>
                        </div>
                      </div>
               </div>
                    
            </div>     
        </div>  
        
        
     <div class="footer-bottom">
    <footer>
    <div class="text-center p-3" style="background-color: #e0e0e0; position: fixed; bottom: 0;height:60px;width:100%;">
        <b> © 2021 Copyright:</b><br>
        <a class="text-dark" href="https://www.linkedin.com/in/mayank-verma-a1652519b/"><b><i>Mayank Verma</i></b></a>
    </div>
    </footer
</div>
  
    </body>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <script src="js/myjs.js" type="text/javascript"></script>
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
</html>
