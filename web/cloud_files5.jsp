<%@page import="java.sql.*"%>
<%@page import="novelefficient.Dbconnection"%>
<%@ page session="true" %>
<%
    String filename = request.getParameter("filename");
    String cat = request.getParameter("cat");
    String email = request.getParameter("email");
   String owner = request.getParameter("owner");
    try{
       
    Connection con=Dbconnection.getConnection();
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("select * from upload where filename= '"+filename+"' and cat='"+cat+"'");
    if(rs.next())
    {
    PreparedStatement ps=con.prepareStatement("update request set cloud = 'Verified' where filename = '"+filename+"' and email = '"+email+"' ");
ps.executeUpdate();
    
    response.sendRedirect("cloud_files4.jsp?msg=Login_Successfull");
    }
    else 
    {
    response.sendRedirect("cloud_files4.jsp?m1=LoginFail");
    }
    }
    catch(Exception e)
    {
    System.out.println("Error in idmlogact"+e.getMessage());
    }
%>