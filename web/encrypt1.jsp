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
  String file = request.getParameter("file");
  String cat = request.getParameter("cat");
  System.out.println("file"+file);
     String user = session.getAttribute("user").toString();
   
  Connection con=Dbconnection.getConnection();
  PreparedStatement pst=con.prepareStatement("delete from news");
pst.executeUpdate();
  
  EncryptFile encryptFile = new EncryptFile();  
  String fileToEncrypt = file;
  String encryptedFile = "encryptedFile.jpg";
  String directoryPath = "C:\\Users\\umesh\\OneDrive\\Documents\\Project\\Blockchain-Assisted Verifiable\\web\\images\\";
 
   BlockchainDemo plainData = new BlockchainDemo();
  int bk =  plainData.blockchainkey(cat);
   
   System.out.println("ddddddddddddddddddddddddddddddddddd" + bk);
  
  
  String k = null;
  System.out.println("Starting Encryption...");
        encryptFile.encrypt(directoryPath + fileToEncrypt,
                directoryPath + encryptedFile);
        System.out.println("Encryption completed...");

        
        
            
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("select * from news");
    if(rs.next())
    {
        k = rs.getString("skey");
    } 
        
    PreparedStatement ps=con.prepareStatement("insert into upload values(?,?,?,?,?)");

    ps.setString(1,file);
    ps.setString(2,cat);
    ps.setString(3,user);
    ps.setString(4,k);
    ps.setInt(5,bk);
 
        ps.executeUpdate();
        
        
        
   response.sendRedirect("encrypt.jsp?mkk= success");     
        

%>