
<%@page import="java.net.*" %>
<%@page import="java.io.*" %>
<%@include file="connection.jsp" %>
<!DOCTYPE html>
<%
  try{
      String e=request.getParameter("email");
      String p=request.getParameter("psd");
      String sql1="select * from user where email='"+e+"' and  password='"+p+"'";
      rs=smt.executeQuery(sql1);
      String name="a";
      int t=0;
      while(rs.next())
      {
          t++;
          name=rs.getString("name");
      }
      if(t==0)
      {
         %>
          <jsp:forward page="/index.jsp" >  
<jsp:param name="wrongemail" value="<%=e%>" />  
</jsp:forward>
         <%
             
      }
      else
      {
        session.setAttribute("username",name);
        session.setAttribute("email",e);
        response.sendRedirect("account.jsp");  

      }
      
  }
catch(Exception e)
{
    out.print(e);
}
%>