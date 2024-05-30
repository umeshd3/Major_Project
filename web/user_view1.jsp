<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.sql.*"%>
<%@page import="novelefficient.Dbconnection"%>
<%@ page session="true" %>
    <%
    String username = session.getAttribute("email").toString();
    String filename = request.getParameter("filename"); 
    String owner = request.getParameter("owner"); 
    String cat = session.getAttribute("cat").toString();
    String skey = request.getParameter("skey");
    String hkey = request.getParameter("hkey");
    String status = "pending";
    String cloud = "cloud";
    
    int id = 0;
    
    try{
   
        
    Connection con=Dbconnection.getConnection();
    PreparedStatement ps=con.prepareStatement("insert into request values(?,?,?,?,?,?,?,?,?)");
    ps.setInt(1,id);
    ps.setString(2,filename);
    ps.setString(3,username);
    ps.setString(4,owner);  
    ps.setString(5,cat);
    ps.setString(6,skey);  
    ps.setString(7,hkey);
    ps.setString(8,status);
   ps.setString(9,cloud);
    
    int i=ps.executeUpdate();
    if(i>0)
    {
    response.sendRedirect("user_view.jsp?msg=Registered");
    }
    else{
    response.sendRedirect("user_view.jsp?msg1=Failed");    
    }
    %>
    <%
    }

    catch(Exception e)
    {
        
       out.println(e);
          
    }
    %>