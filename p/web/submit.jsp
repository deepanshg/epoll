<%@page import="java.sql.*"%>
<%@include file="connection.jsp" %>
<html>
    <%
        String q=request.getParameter("_question");
        String o1=request.getParameter("_option1");
        String o2=request.getParameter("_option2");
        String o3=request.getParameter("_option3");
        String o4=request.getParameter("_option4");
        String o5=request.getParameter("_option5");
        String id=(String)session.getAttribute("id");
       //String id="4mk7r4"; 
       int n=0;
        try{
            String sql="select no from name where id='"+id+"'";
         //  String sql="select no from name where id='4mk7r4'";
            rs=smt.executeQuery(sql);
            while(rs.next())
            {
            n=rs.getInt("no");
            }
            n=n+1;
            if(n==1)
            {
                    String _em=(String)session.getAttribute("email");
                 String sl="insert into link(email,id,state) values('"+_em+"','"+id+"',1)";
        
          smt.executeUpdate(sl);

       
            }   
            String sq="insert into question(no,id,_question,_option1,_option2,_option3,_option4,_option5) values("+n+",'"+id+"','"+q+"','"+o1+"','"+o2+"','"+o3+"','"+o4+"','"+o5+"')";
            int r=smt.executeUpdate(sq);
            String o;
            o=Integer.toString(n);
            sq="update name set no="+o+" where id='"+id+"'";
            r=smt.executeUpdate(sq);
            
            if(r>0)
            {
             //   out.print("ADDED SUCCESSFULLY");
                response.sendRedirect("addquestion.jsp");
                
            }
            
            else
            {
                out.print("ERROR");
            }
            
                con.close();
        }
        catch(Exception e){
            out.print(e+"ERROR");
            
        }
        
       
        %>
</html>