<%@page import="com.sun.org.apache.xerces.internal.impl.dv.util.Base64"%>
<%@page import="studentfaculty.decrypt"%>
<%

  String file = request.getParameter("file");
  System.out.println("file"+file);
   String encryptedFile = file;
   String decryptedFile = "decimg.jpg";
   String directoryPath = "C:\\Users\\umesh\\OneDrive\\Documents\\Project\\Blockchain-Assisted Verifiable\\web\\images\\";
   
   String skey = request.getParameter("skey");
decrypt encryptFile = new decrypt();

encryptFile.decrypt(directoryPath + encryptedFile,
                directoryPath + decryptedFile,skey);
        System.out.println("Decryption completed...");


   response.sendRedirect("decrypt.jsp?msg= success"); 


%>