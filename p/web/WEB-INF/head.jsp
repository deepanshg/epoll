<%-- 
    Document   : head
    Created on : 04-Oct-2016, 01:34:21  
    Author     : Deepansh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
           
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        
    </head>
    <body>
         <!-- Navigation -->
         <nav class="navbar navbar-default navbar-fixed-top" style="background-color:#255073">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only" >Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand page-scroll" href="/p/faces/index.jsp" style="color: #255073 ;align:top" ><img src="images/bg12.png" style="width:200px;height:40px;float: left"></a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    
                    
                    
                    
                    
                     		
                                    
                                    <%
                                        
                                        String _name=(String)session.getAttribute("username");  
                                        

                                        if(_name==null) 
                                        {
                                        %>
                      <li>
                                        <a class="page-scroll" href="/p/faces/login.jsp">Login</a>
                    
                      </li>
                    <%
                        }
else{
%>
<li>
                    <a class="page-scroll" href="/p/faces/account.jsp">Account</a>
                    </li>
                    <%}
                         String _email=(String)session.getAttribute("email");
                        if(_email==null)
{
                        %>
                    
                                            <li>

                        <a class="page-scroll" href="/p/faces/register.jsp">Sign Up</a>
                                            </li>
                        <%
                            }
else
{
%>
                    <li>
                         
<a class="page-scroll" href="/p/faces/logout.jsp">Log Out</a>    
                    </li> 
<%}%>      
                                
                                
                                
                    
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

      
    </body>
</html>
