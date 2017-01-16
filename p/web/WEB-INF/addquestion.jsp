<%@include file="head.jsp" %>
<html>
    <head>
        <title>
            Poll
        </title>
               <link type="text/css" href="exter.css" rel="stylesheet"/>
    </head>
    
    <body>
           <div style="border:0px tomato solid;height:500px;width: 1000px;margin-left: 60px;margin-top: 100px;float:left">
           <ul>
               <li class="nostyle">
        <form action="submit.jsp" id="6" method="POST">
            Question: <input type ="text" name="_question" size="70">
            </li>
            <br>
            OPTIONS<br>
           1 <input type ="text" name="_option1"><br><br>
           2 <input type ="text" name="_option2"><br><br>
           3 <input type ="text" name="_option3"><br><br>
           4 <input type ="text" name="_option4"><br><br>
           5 <input type ="text" name="_option5"><br><br>
         <input type="submit" name="SUBMIT">
        </form>
           
           <form action="account.jsp" id="5" method="POST">
               <input type="submit" value="End Question">
           </form> 
        
    </body>
</html>