<%-- 
    Document   : register
    Created on : 01-Oct-2016, 03:49:36
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
         <link type="text/css" href="exter.css" rel="stylesheet"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
        <script type="text/javascript">
            var request;
            var ch=0;
            var chk=0;
            function validemail()
            {
                ch=0;
               // alert("HELLo");
                var x=document.myform.email.value;
                var atposition=x.indexOf("@");
                var dotposition=x.indexOf(".");
                if(atposition<1 || dotposition<atposition+2 || dotposition+2>=x.length)
                {
                    document.getElementById("v2").innerHTML="Enter valid Email";
                    document.getElementById("e1").value="";
                    document.getElementById("e1").focus();
                    return  ;
                }
                  else
                {
                    
                    document.getElementById("v2").innerHTML="";
                     sendinfo();    
                }
                
                
                
              
            }
            
            function checkpassword()
            {
                var p=document.getElementById("p1").value;
                var a=p.length;
                document.getElementById("v3").innerHTML="";
                if(a<=5)
                {
                    document.getElementById("v3").innerHTML="weak";
                }
                else
                {
                    if(a<=7)
                    {
                        document.getElementById("v3").innerHTML="average";
                    }
                    else
                    {
                        document.getElementById("v3").innerHTML="strong";
                    }
                }
            }
            
            function confirm()
            {
                var p=document.getElementById("p1").value;
                var a=p.length;
                var c=document.getElementById("p2").value;
                var b=c.length;
                document.getElementById("v4").innerHTML="";
                if(p==c)
                {
                    document.getElementById("v4").innerHTML="";
                    //return 1;
                }
                else
                {
                    document.getElementById("v4").innerHTML="Password Doesnot match";
                    document.getElementById("p2").value="";
                }
            }
            
            function phone()
            {
                
                   var ph=document.getElementById("m1").value;
                   var a=ph.length;
                   document.getElementById("v5").innerHTML="";
                   if(a==0)
                   {
                       document.getElementById("v5").innerHTML="Enter a Valid Number";
                           document.getElementById("m1").value="";
                         
                           return;
                   }
                   
                   for(i=0;i<a;i++)
                   {
                       if(((ph.charAt(i)>='0')||(ph.charAt(i)<='9'))&&(a==10))
                       {
                           document.getElementById("v5").innerHTML="";
                           
                       }
                       else
                       {
                           document.getElementById("v5").innerHTML="Enter a Valid Number";
                           document.getElementById("m1").value="";
                           
                           return;
                       }
                   }
                   ch=1;
                   sendinfophone();
            }
            
            function sendinfo()
            {
                ch=0;
                var tt=document.myform.email.value;
                
                    var url="checkemail.jsp?vala="+tt;
                    
                    
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
                       if(ch==0)
                       {
                           
                                document.getElementById("v2").innerHTML=vala;
                           
                       }
                       else 
                       {
                           document.getElementById("v5").innerHTML=vala;
                       }
                    
                   }
                   //return 1;
               }
               
               
            function sendinfophone()
            {
                ch=1;
                
                var tt=document.myform.mob.value;
                
                    var url="checkphone.jsp?vala="+tt;
                    
                    
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
                
                function details()
                {
            
                ch=2;
                var n=document.myform.name.value;
                var e=document.myform.email.value;
                var p=document.myform.psd.value;
                var ph=document.myform.mob.value;
                
                    var url="enterdetails.jsp?name="+tt+"&email="+e+"&pass="+p+"&phone"+ph;
                    
                    
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
                
               
            
            
        </script>
        
    </head>
    <body>
       
        <div style="border:0px tomato solid;height:700px;width: 835px;margin-left: 500px;margin-top: 150px;float:left">
            <h1>Create Account</h1>
            <form name="myform" method="POST" action="enterdetails.jsp"  >
                <ol >
                    
                    <li class="nostyle">
                         <b> Name</b>
                        
                    </li>
                    <li class="nostyle">
                        <input type="text"  id="z1" name="name" style="height:30px;width:500px">
                    </li>
                    <br>
                    <br>
                    <li class="nostyle">
                        <b>Email</b>
                    </li>
                    <li class="nostyle">
                        <input type="text" name="email" id="e1" style="height:30px;width: 500px" onblur="validemail()"> <div id="v2" class="val"></div>
                    </li>
                    <br><br>
                    <li class="nostyle">
                        <b>Password</b>
                    </li>
                    <l1 class="nostyle">
                        <input type="password" name="psd" id="p1" style="height:30px;width: 500px" onblur="checkpassword()"> <div id="v3" class="val"></div>
                    </l1>
                    <br>
                    <br>
                    <li class="nostyle">
                        <b>Confirm Password</b>
                    </li>
                    
                    <l1 class="nostyle">
                        <input type="password" name="cpsd" id="p2" style="height:30px;width: 500px" onblur="confirm()"> <div id="v4" class="val"></div>
                    </l1>
                    <br><br>
                    <l1 class="nostyle">
                        <b>Phone Number</b>
                        <br>
                    </l1>
                    
                    <l1 class="nostyle">
                        <input type="text" name="mob" id="m1" style="height:30px;width: 500px" onblur="phone()"> <div id="v5" class="val"></div>
                    </l1>
                    <br>
                    <br>
                    <div id="v6" class="val"></div>
                    
                    <input type="submit" value="SUBMIT" name="sub" style=" margin-top:10px;margin-left: 150px;height: 35px;width: 80px;font-weight:bold;background-color: #F2AE30" onclick="details()"/>
                    
                    
                </ol>
            </form>
            
        </div>
    </body>
</html>



