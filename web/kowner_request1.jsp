<%@page import="java.util.Random"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.sql.*"%>
<%@page import="novelefficient.Dbconnection"%>
<%@page import="novelefficient.Mail"%>
<%@ page session="true" %>
    <%
    String email = request.getParameter("email");
    
 
   // String date = request.getParameter("uploadeddt"); 
    String key = null;
    
      Random s = new Random();
    int otp = s.nextInt(10000 - 5000) +25000 ;
    
    try{
   
        
    Connection con=Dbconnection.getConnection();
    
    
   
    PreparedStatement ps=con.prepareStatement("update owner set skey = '"+otp+"',status = 'sent' where email = '"+email+"' ");
    System.out.println(ps);
    Mail m = new Mail();
          String msg ="User Name:"+email+"\notp key :"+otp;
          m.secretMail(msg,email,email);
    
    int i=ps.executeUpdate();
    if(i>0)
    {
    response.sendRedirect("kmanager_aowner.jsp?m1=Registered");
    }
    else{
    response.sendRedirect("managert_request.jsp?m2=Failed");    
    }
    %>
    <%
    }

    catch(Exception e)
    {
        
       out.println(e);
          
    }
    %>