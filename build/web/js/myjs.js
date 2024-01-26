/*            alert("working11");    
            $(document).ready(function(){
                    console.log("loaded...");
                $('#reg-form').on('submit',function(event){
                //servlet pr nhi jaega after submition boz of event.pre   
                event.preventDefault(); 
               let form=new FormData(this);
                $("#submit-btn").hide();
                $("#loader").show();
        //send register servlet
                $.ajax({
                    url:"RegisterServlet",
                     type:'POST',
                     data: form,
                     success: funtion(data, textStatus, jqXHR){
                         console.log(data)
                $("#submit-btn").show();
                $("#loader").hide();        
                if(data.trim()=='done')
                {    
                swal("registered successfully... we redirecting you to login page")
                .then((value) => {
                    window.location="login.jsp"
                    swal(`The returned value is: ${value}`);
                });
                }
                else
                {
                    swal("something went wrong please try again");
                }
            },
                     error: function (jqXHR,textStatus, errorThrown){
                         console.log(jqXHR)
                         $("#submit-btn").show();
                         $("#loader").hide();        
                        swal("something went wrong please try again");
                    },
                     processData: false,
                     contentType: false
                
        
                    })
                
                
            });
               
            });
     