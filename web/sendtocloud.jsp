<%@page import="java.sql.*"%>
<%@page import="novelefficient.Dbconnection"%>
<%@page import="keywordsearch.BlockchainDemo"%>
<%@page import="java.io.File"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="studentfaculty.EncryptFile"%>
<%@page import="javax.crypto.Cipher"%>
<%@page import="javax.crypto.SecretKey"%>
<%@page import="javax.crypto.KeyGenerator"%>
<%
  String file = request.getParameter("filename");
  String cat = request.getParameter("cat");
  String owner = request.getParameter("owner");
  String hkey = request.getParameter("hkey");
     String skey = request.getParameter("skey"); 
       
  Connection con=Dbconnection.getConnection();
    PreparedStatement ps=con.prepareStatement("insert into cview values(?,?,?,?,?)");

    ps.setString(1,file);
    ps.setString(2,cat);
    ps.setString(3,owner);
    ps.setString(4,hkey);
    ps.setString(5,skey);
 
        ps.executeUpdate();
        
        
        
   response.sendRedirect("owner_view3.jsp?mkk= success");     
        

%>