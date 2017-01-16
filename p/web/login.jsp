<%-- 
    Document   : login
    Created on : 01-Oct-2016, 02:50:15
    Author     : Deepansh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.net.*" %>
<%@page import="java.io.*" %>
<%@include file="connection.jsp" %>
<%@include file="head.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link type="text/css" href="exter.css" rel="stylesheet"/>
        <style>
body {
    background-color: #203349;
}
</style>
      <%
        
        String ppp=request.getParameter("wrongemail");
        if(ppp==null)
       {
           
       }
        else
        {
          %>
          
          <script type="text/javascript">
              {
                  doucument.getElementById("v9").value="fdsf";
              }
              </script>
          
          


          <%
        }
        
        String sql;
        String name=" ";    
        if(request.getParameter("btnlogin")!=null)
        {
            
            String em=request.getParameter("_email");
            String pa=request.getParameter("_password");
          
            sql="select * from user where email='"+em+"' and password='"+pa+"'";
            rs=smt.executeQuery(sql);
            while(rs.next())
            {
                 name=rs.getString("fname");
                session.setAttribute("username",name );
                session.setAttribute("email",em);%>
                <jsp:forward page="account.jsp" />
                <%
               out.print(name+" "+em);
            }
              if(em.equals("")||pa.equals(null))
            {
                out.print("enter username and password");
                
            }
              else  if(name.equals(" "))
            {
                out.print("wrong username");
                
            }
        }
        %>
    </head>
    
    <body>
        <div style="border:1px white;height:400px;width: 400px;margin-left: 500px;margin-top: 150px;float:left;background-color: #eaedef;" >
             <div style="border:1px white;height:250px;width: 300px;margin-left: 20px;margin-top: 15px;float:left;background-color: #eaedef;" >
                 <ol>
            <li class="nostyle">
                <form action="log.jsp" method="POST">
                <h1><b>Login</b></h1>
            </li>
            <li class="nostyle">
                <b> Email</b>
            </li>
            <li class="nostyle">
                <input type="text" name="email" id="e1" style="height: 30px;width: 250px ">
            </li>
            
            <br>
            <li class="nostyle"><b>Password</b></li>
            <li class="nostyle">
                <input type="password" name="psd" id="e2" style="height: 30px;width: 250px">
               
                <div style="border:1px;background-color: red; " id="v9"  ></div>
               
            <li class="nostyle">    
                <input type="submit" value="login" name="sub" style="margin-top: 30px;margin-left: 50px;height: 35px;width: 80px"/>
            </li>   </form>
                <br>
            <li class="nostyle">
                &nbsp;&nbsp; <a href="./register.jsp">want to create account</a>
            </li>
                 </ol>
             </div>
        </div>
    </body>
    
  
</html>
