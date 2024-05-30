/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package studentfaculty;

/**
 *
 * @author Nikith1000Projects
 */

import com.sun.org.apache.xerces.internal.impl.dv.util.Base64;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.KeyGenerator;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
 
/**
 *
 * @author dhanoopbhaskar
 */
public class EncryptFile {
 
    KeyGenerator keyGenerator = null;
    SecretKey secretKey = null;
    Cipher cipher = null;
 
   
    
    
    public EncryptFile() {
        try {
            /**
             * Create a Blowfish key
             */
            keyGenerator = KeyGenerator.getInstance("Blowfish");
            secretKey = keyGenerator.generateKey();
    //String file = request.getParameter("file");
            /**
             * Create an instance of cipher mentioning the name of algorithm
             *     - Blowfish
             */
            
            cipher = Cipher.getInstance("Blowfish");
        } catch (NoSuchPaddingException ex) {
            System.out.println(ex);
        } catch (NoSuchAlgorithmException ex) {
            System.out.println(ex);
        }
    }
    
   
 
    
    
 public void encrypt(String srcPath, String destPath) throws SQLException {
        File rawFile = new File(srcPath);
        File encryptedFile = new File(destPath);
        InputStream inStream = null;
        OutputStream outStream = null;
        try {
            Connection con;
            PreparedStatement pstm = null;
            /**
             * Initialize the cipher for encryption
             */
            cipher.init(Cipher.ENCRYPT_MODE, secretKey);
            /**
             * Initialize input and output streams
             */
            
            byte[] be = secretKey.getEncoded();//encoding secretkey
              String skey = Base64.encode(be);
            System.out.println("sKey"+skey);
            System.out.println("secretKey"+secretKey);
            
        String usermail = "mail.1000projects@gmail.com";  
         Mail m = new Mail();
          String msg ="Secret Key:"+skey;
       
          m.secretMail(msg,usermail,usermail);    
           
          
           con = novelefficient.Dbconnection.getConnection();
                           
        pstm = con.prepareStatement("insert into news (skey)values(?)");
             pstm.setString(1, skey);       
        
        pstm.executeUpdate();        
                                
          
          
            inStream = new FileInputStream(rawFile);
            outStream = new FileOutputStream(encryptedFile);
            byte[] buffer = new byte[1024];
            int len;
            while ((len = inStream.read(buffer)) > 0) {
                outStream.write(cipher.update(buffer, 0, len));
                outStream.flush();
            }
            outStream.write(cipher.doFinal());
            inStream.close();
            outStream.close();
        } catch (IllegalBlockSizeException ex) {
            System.out.println(ex);
        } catch (BadPaddingException ex) {
            System.out.println(ex);
        } catch (InvalidKeyException ex) {
            System.out.println(ex);
        } catch (FileNotFoundException ex) {
            System.out.println(ex);
        } catch (IOException ex) {
            System.out.println(ex);
        }
    }
    
    
    
    
}
    
    
    


