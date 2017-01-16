<%-- 
    Document   : account
    Created on : 04-Oct-2016, 02:14:28
    Author     : Deepansh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.net.*" %>
<%@page import="java.io.*" %>
<%@include file="connection.jsp" %>
<%@include file="connection1.jsp" %>
<%@include file="head.jsp" %>
<!DOCTYPE html>
<html>
    <head>
         <link type="text/css" href="exter.css" rel="stylesheet"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Account</title>
        <style>          table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
 th,td{
            padding: 5px;
        }
        
        .switch {
  position: relative;
  display: inline-block;
  width: 60px;
  height: 34px;
}

.switch input {display:none;}

.slider {
  position: absolute;
  cursor: pointer;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #ccc;
  -webkit-transition: .4s;
  transition: .4s;
}

.slider:before {
  position: absolute;
  content: "";
  height: 26px;
  width: 26px;
  left: 4px;
  bottom: 4px;
  background-color: white;
  -webkit-transition: .4s;
  transition: .4s;
}

input:checked + .slider {
  background-color: #2196F3;
}

input:focus + .slider {
  box-shadow: 0 0 1px #2196F3;
}

input:checked + .slider:before {
  -webkit-transform: translateX(26px);
  -ms-transform: translateX(26px);
  transform: translateX(26px);
}

/* Rounded sliders */
.slider.round {
  border-radius: 34px;
}

.slider.round:before {
  border-radius: 50%;
}
</style>

<script>
    function statechange(x)
    {
        var id=x.id;
        //String _id=doument.getElementBy
     //   alert(id);
        var url="state.jsp?id1="+id;
     //               alert(url);
        if(window.XMLHttpRequest)
                    {
                        request=new XMLHttpRequest();
                    }
                    else if(window.ActiveXObject)
                    {
                        request=new ActiveXObject("Microsoft.XMLHTTP");
                    }
                   try  
                   {  
                       request.onreadystatechange=getInfo;  
                       request.open("GET",url,true);  
                       request.send(); 
                       
                   }  
                   catch(e)  
                   {  
                       alert("Unable to connect to server");  
                   }    
                   
       
    }
    
     function getInfo(){  
                   if(request.readyState==4){  
                       var vala=request.responseText;
       // alert(vala);
        
        }}
    
    </script>
    </head>
    <body>
       <div style="border:0px tomato solid;height:700px;width: 1000px;margin-left: 60px;margin-top: 100px;float:left">
           <ul>
            <li class="nostyle">
                <h2>  <a  href="/p/faces/creation.jsp">Create Poll</a></h2>
                    
                      </li>
                       <li class="nostyle" >    
                           <h3> My Poll </h3>    
                      </li>
                       <li class="nostyle" >
                           
                            <table  style="border: 1px solid black;width: 900px">
                
                <tr>
                    <th>Name Of Poll</th>
                    <th> Link</th>
                    <th> results</th>
                    <th>State</th>
                    
                </tr>
                
                      <%
                          String _na=(String)session.getAttribute("username");
                          if(_na==null)
                          {response.sendRedirect("/p/faces/login.jsp");
                          }
                          String _em=(String)session.getAttribute("email");
                          String id;
                          String sql="select * from link where email='"+_em+"'";
                          rs=smt.executeQuery(sql);
                          while(rs.next())
                          {
                              String qq="f";
                                      qq=rs.getString("id");
                              String sq="select pollname from name where id='"+qq+"'";
                              rs1=smt1.executeQuery(sq);
                              String tt="n";
                              String link="fas";
                              String link1="fa";
                              String st="checked";
                              int ss=1;
                              ss=rs.getInt("state");
                              if(ss==0)
                              {
                                  st="unchecked";
                              }
                              while(rs1.next())
                              {
                                  tt=rs1.getString("pollname");
                                  link="http://localhost:8080/p/faces/fill.jsp?"+qq;
                                  link1="http://localhost:8080/p/faces/view.jsp?"+qq;
                              }
                              %>
                               <tr>
                                   <td><%=tt%></td> 
                                   <td><a><%=link%></a></td>
                                   <td><a><%=link1%></a></td>
                                   <td>
                              <%if(ss==1){
                                  %>
                                  <label class="switch">
                                      <input type="checkbox" checked id="<%=qq%>" onclick="statechange(this)">
                                      <div class="slider round"></div>
                                  </label>

                                  
                                  <%
                              }  
else{
%>
<label class="switch">
  <input type="checkbox" id="<%=qq%>" onclick="statechange(this)">
  <div class="slider round"></div>
</label>

<%
}
                              
                                      
                                      
                                      %>
                                   </td>
                               </tr>
                              <%
                          }
                          %>
                       </li>
           </ul>
           
       </div>
                       
    </body>
</html>
