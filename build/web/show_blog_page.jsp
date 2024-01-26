<%@page import="java.util.ArrayList"%>
<%@page import="com.tech.blog.entities.Category"%>
<%@page import="com.tech.blog.entities.Post"%>
<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@page import="com.tech.blog.dao.PostDao"%>
<%@page import="com.tech.blog.entities.User"%>
<%
    int postId=Integer.parseInt(request.getParameter("post_id"));
    PostDao d=new PostDao(ConnectionProvider.getConnection());
    Post p=d.getPostByPostid(postId);
    




%>
<%
    User user=(User)session.getAttribute("currentUser"); 
    if(user==null)
    {
    response.sendRedirect("login.jsp");
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%=p.getpTitle()%></title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>

   <style>
        .post-title
        {
            font-weight: 100;
            font-size: 30px;
        }
         .post-content
        {
            font-weight: 100;
            font-size: 25px;
        }
        .post-name
        {
            font-weight: 150;
            font-size: 20px;
        }
         .post-date
        {
            font-style: italic;
            font-weight: bold;
        }
         .row-user
        {
           border:1px solid #000000;
           padding-top:5px; 
           
        }
        
        
    </style>
 
    </head>
    
    
    
    
    <body>     

        
        
        
        
        
        
        
        
        
        <!-- navbar-->

                                <nav class="navbar navbar-expand-lg navbar-dark primary-background">
                         <a class="navbar-brand" href="index.jsp"><span class="fas fa-book-open"></span>&nbsp;&nbsp;Tech Blog</a>
                         <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                           <span class="navbar-toggler-icon"></span>
                         </button>
                         <div class="collapse navbar-collapse" id="navbarSupportedContent">
                           <ul class="navbar-nav mr-auto">
                             <li class="nav-item ">
                               <a class="nav-link" href="profile.jsp">Recent Blog </a>
                             </li>
                             <li class="nav-item dropdown">
                               <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                 Categories
                               </a>
                               <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                 <a class="dropdown-item" href="#">Java</a>
                                 <a class="dropdown-item" href="#">Python</a>
                                 <a class="dropdown-item" href="#">C++</a>
                                 <a class="dropdown-item" href="#">c</a>
                                 <div class="dropdown-divider"></div>
                                 <a class="dropdown-item" href="#">Something else here</a>
                                 </div>
                               <li class="nav-item">
                                  <a class="nav-link" href="register.jsp">contact</a>
                               </li>
                              
                               <li class="nav-item">
                                  <a class="nav-link" href="#!" data-toggle="modal" data-target="#add-post-modal" >Do Post</a>
                               </li>
                              
                               
                             </ul> 
                             <ul class="navbar-nav mr-right">
                                <li class="nav-item">
                                <a class="nav-link" href="#!" data-toggle="modal" data-target="#profile-modal"> <span class="fa fa-user-circle "></span> <%= user.getName()%> </a>
                                </li>

                                <li class="nav-item">
                                <a class="nav-link" href="LogoutServlet"> <span class="fa fa-user-plus "></span> Logout</a>
                                </li>
                             </ul>
                            </div>
                       </nav>
                       
     
     <!-- end of navbar-->
     <!--main content of the body-->
     
             <div class="container">
                 
                 <div class="row my-4">
                     
                     <div class="col-md-8 mt-3 offset-md-2">
                     
                            <div class="card">
                                
                                <div class="card-header primary-background3">
                                
                                    <h4 class="post-title"><%=p.getpTitle()%></h4>     
                                
                                </div>
                                
                                <div class="card-body">
                                    <p class="post-content"><%=p.getpContent() %></p>
                                     <br>
                                     <br>
                                        <div class="post-code"> 
                                     <pre><%=p.getpCode()%></pre>
                                        </div> 
                               
                                    
                                    <div class="row my-3 row-user">
                                        <div class="col-md-8">
                                            <p class="post-name"><a href="#!">mayank verma</a> has posted on:</p> 
                                        </div>
                                                
                                        <div class="col-md-4">
                                            <p class="post-date"><%=p.getpDate().toLocaleString()%></p>
                                        </div>
                                         
                                    </div>
                                    
                                    
                                    
                                     </div>
                                   
                                <div class="card-footer text-center">
                                        <a href="#!" class="btn btn-outline-light primary-background2 btn-sm"><i class="fa fa-thumbs-up fa-2x" ></i></i><span>1000</span> </a>
                                        <a href="#!" class="btn btn-outline-light primary-background2 btn-sm"><i class="far fa-comment fa-2x" ></i></i><span>20</span> </a>
                    
                                </div>
              
                            </div>
                     </div>
                     
                 </div>
             
             </div>     
     
     
     
     
     
     
     
         <!--end of main body of the pages-->
     
    <!--profile modal-->    
   
                    <!-- Modal -->
                    <div class="modal fade" id="profile-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                      <div class="modal-dialog" role="document">
                        <div class="modal-content">
                          <div class="modal-header primary-background4 ">
                            <h5 class="modal-title" id="exampleModalLabel"><span class="fas fa-book-open"></span>&nbsp;&nbsp;Tech Blog</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                              <span aria-hidden="true">&times;</span>
                            </button>
                          </div>
                          <div class="modal-body">
                           <div class="container text-center">
                            <img src="pics/<%=user.getProfile()%>" class="img-fluid" style="border-radius:50%;max-width:150px;" >
                           <br>    
                               <h5 class="modal-title mt-3" id="exampleModalLabel"><%= user.getName()%></h5>
                                <!--details-->
       
                                <table class="table">
                                <tbody>
                                <tr>
                                    <th scope="row">ID :</th>
                                    <td><%=user.getId() %></td>
                                </tr>
                                <tr>
                                    <th scope="row">Email :</th>
                                    <td><%=user.getEmail() %></td>
                                </tr>
                                <tr>
                                    <th scope="row">Gender</th>
                                    <td><%=user.getGender() %></td>
                                </tr>
                                <tr>
                                    <th scope="row">Status</th>
                                    <td><%=user.getAbout() %></td>
                                </tr>
                                <tr>
                                    <th scope="row">registered on</th>
                                    <td><%=user.getDateTime().toString() %></td>
                                </tr>
                                </tbody>
                                </table>
       
                           
                           </div>
                          </div>
                          <div class="modal-footer">
                            <button type="button" class="btn btn-primary primary-background2" data-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-primary primary-background2">Save changes</button>
                          </div>
                        </div>
                      </div>
                    </div>
        
                    
                <!--end of profile model-->        
        
               <!--add post modal--> 
               <!-- Button trigger modal -->
               
                    <!-- Modal -->
                    <div class="modal fade" id="add-post-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                      <div class="modal-dialog" role="document">
                        <div class="modal-content">
                          <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Provide the post detail</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                              <span aria-hidden="true">&times;</span>
                            </button>
                          </div>
                          <div class="modal-body">
                            <form id="add-post-form" action="AddPostSevlet" method="POST">
                            
                                <div class="from-group">
                                <select class="form-control" name="cid">
                                    <option selected disabled>Select Category</option>
                                   <%
                                   PostDao postd=new PostDao(ConnectionProvider.getConnection());
                                   ArrayList<Category> list=postd.getAllCategories();
                                   for(Category c:list)
                                   {
                                   %>
                                   <option value="<%=c.getCid()%>"><%=c.getName()%></option>
                                    <%
                                    }
                                    %>            
                                
                                
                                
                                </select>
                                
                                </div>
                                                                
                                
                                <div class="form-group mt-3">     
                                    <input name="pTitle" type="text" placeholder="Enter Post Title" class="form-control">
                                </div>
                                
                                 <div class="form-group">     
                                     <textarea name="pContent" type="text" placeholder="Enter Post Content" style="height:100px;" class="form-control"></textarea>
                                </div>
                               
                                  <div class="form-group">     
                                     <textarea name="pCode" type="text" placeholder="Enter Post Code(If any)" style="height:100px;" class="form-control"></textarea>
                                </div>
                                 
                                <div class="form-group">     
                                    <lable>Select your pic...</lable><br>
                                    <input type="file" name="pic">
                                </div>
                                
                                    <div class="container text-center">     
                                    <button type="submit" class="btn btn-outline-primary">Post</button>
                                </div>
                                    
                                
                            </form>    
                                        
                              
                              </div>
                          
                                    
                        </div>
                      </div>
                    </div> 
          
               <!--end of add post modal-->
           
                
                
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <script src="js/myjs.js" type="text/javascript"></script>
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"></script>
        <!--javaScript for send post form information to dB through servlet-->
   
        <script>
               $(document).ready(function (e) {
                //
                $("#add-post-form").on("submit", function (event) {
                    //this code gets called when form is submitted....
                    event.preventDefault();
                    console.log("you have clicked on submit..")
                    let form = new FormData(this);
                    //now requesting to server
                    $.ajax({
                        url: "AddPostServlet",
                        type: 'POST',
                        data: form,
                        success: function (data, textStatus, jqXHR) {
                            //success ..
                            console.log(data);
                            if (data.trim() =='done')
                            {
                                swal("Good job!", "saved successfully", "success");
                            } else
                            {
                                
            
                             swal("Good job!", "saved successfully", "success");
                               
                            //swal("Error!!", "Something went wrong try again...", "error");
                            }
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            //error..
                            swal("Error!!", "Something went wrong try again...", "error");
                        },
                        processData: false,
                        contentType: false
                    })
                })
            }) 
            
        </script>
     <!--hare past is loaded with help of ajax-->  

     </body>
</html>
