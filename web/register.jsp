<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>registration </title>
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

        <main class="primary-background4 p-5 banner-background" style="padding-bottom:180px;">
            
            <div class="container">
                
                 <div class="col-md-6 offset-md-3">
                    
                     <div class="card">
                         
                        <div class="card-header primary-background1 text-center">
                           <span class="fa fa-user-circle fa-3x"></span>
                                <br>
                                register here
                            </div>
                                
                                <div class="card-body">
                                <form id="reg-form" action="RegisterServlet" method ="POST">
                                                                         
                                    
                                        <div class="form-group">
                                          <label for="exampleInputEmail1">User Name</label>
                                          <input name="user_name" required type="text" class="form-control" id="user_name" aria-describedby="emailHelp" placeholder="Enter User Name">
                                          </div>
                                        
                                        <div class="form-group">
                                          <label for="exampleInputEmail1">Email address</label>
                                           <input name="user_email" required type="user_email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                         
                                          <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                        </div>
                                        <div class="form-group">
                                          <label for="exampleInputPassword1">Password</label>
                                          <input  name="user_password" required type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                                        </div>
                                       <div class="form-group">
                                          <label for="gender">Select Gender </label><br>
                                          <input type="radio" id="gender" name="gender" value="male">&nbsp;Male&nbsp;&nbsp;&nbsp;&nbsp;
                                          <input type="radio" id="gender" name="gender" value="female">&nbsp;Female
                                       </div>
                                       <div class="form-group">
                                           <textarea name="about" class="form-control" id="" rows="4" placeholder="Enter here about yourself"></textarea>
                                       
                                       </div>
                                    
                                        <div class="form-group form-check">
                                          <input  name="check" type="checkbox" class="form-check-input" id="exampleCheck1">
                                          <label class="form-check-label" for="exampleCheck1">agree terms and conditions</label>
                                        </div>
                                            <br>
                                           <div class="container text-center" id="loader" style="display:none;">
                                              <span class="fa fa-spinner fa-spin fa-3x"></span>
                                           <h4>Please wait...</h4>
                                           </div>
                                            <br>
                                            <button id="submit-btn" type="submit" class="btn btn-primary primary-background2">Submit</button>
                                      </form>

                            </div> 
                            
                            <div class="card-footer">
                                 
                            </div>    
                        
                        </div>
                     </div>        
                         
                 </div>
  
            </div>
           
            </div>
            
            
            
        </main>    
        
        
        
        
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        
        <script>
     
    </script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <script src="js/myjs.js" type="text/javascript"></script>
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
         <script>
            $(document).ready(function () {
                console.log("loaded........")
                $('#reg-form').on('submit', function (event) {
                    event.preventDefault();
                    let form = new FormData(this);
                    $("#sumbimt-btn").hide();
                    $("#loader").show();
                    //send register servlet:
                    $.ajax({
                        url: "RegisterServlet",
                        type: 'POST',
                        data: form,
                        success: function (data, textStatus, jqXHR) {
                            console.log(data)
                            $("#submit-btn").show();
                            $("#loader").hide();
                            if (data.trim() === 'done')
                            {
                                swal("Registered Successfully..We are going to redirect to login page")
                                        .then((value) => {
                                            window.location = "login.jsp"
                                        });
                            } else
                            {
                                swal(data);
                            }
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            $("#submit-btn").show();
                            $("#loader").hide();
                            swal("something went wrong..try again");
                        },
                        processData: false,
                        contentType: false
                    });
                });
            });
        </script>  
    </body>
</html>
