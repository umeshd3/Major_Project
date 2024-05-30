<%@page import="keywordsearch.BlockchainDemo"%>
<%@page import="java.sql.*"%>
<%@page import="keywordsearch.DbConnection"%>
<%@ page session="true" %>
        <%
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        try{
         BlockchainDemo bdemo = new BlockchainDemo();
         int bk = bdemo.blockchainkey("shanthan");
         System.out.println("ddddddddddddddddddddddddddddddddddd" + bk);
        Connection con=DbConnection.getconnection();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from owner where email= '"+username+"' and password='"+password+"'");
        if(rs.next())
        {
      String user = rs.getString(3);
        session.setAttribute("username",username);
        response.sendRedirect("ownerhome.jsp?msg=LoginSuccess");
        }
        else 
        {
        response.sendRedirect("owner.jsp?msg1=LoginFail");
        }
        }
        catch(Exception e)
        {
        System.out.println("Error in owner"+e.getMessage());
        }
        %>