<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Develop a Secure and Trust Based Key Management Protocol for Cloud Computing Environment</title>
<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/jquery.jcarousel.js"></script>
<script src="js/cufon-yui.js" type="text/javascript" charset="utf-8"></script>
<script src="js/Chaparral_Pro.font.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="js/jquery-func.js"></script>
<link rel="shortcut icon" type="image/x-icon" href="css/images/favicon.ico" />
</head>
     <%
if(request.getParameter("msg")!=null){%>
    
   <script>alert('Ownenr Registration Success..!')</script>
}  

<%}
if(request.getParameter("msg1")!=null){%>

 <script>alert('Login Failed..!')</script>
}
<%
}
%>
<body>
<!-- START PAGE SOURCE -->
<div id="header">
    <br>
  <div class="shell">
     <img src="css/images/icon2.jpg" width="100px" alt="img" style="margin-left:-250px " align="left" >
   
    <div class="search">
      
    </div>
  </div>
</div>
<div id="navigation">
  <div class="shell">
   <ul>
          <li><a href="userhome.jsp">HOME</a></li>
       <li><a href="user_viewp.jsp">View Profile</a></li>  
      <li><a href="user_view.jsp">View Files</a></li>   
        
      <li><a  class="active" href="user_download.jsp">Download Files</a></li>
       <li><a href="logout.jsp">Logout</a></li>
    </ul>
  </div>
</div>
<div id="featured">
  <div class="shell">
    <div class="slider-carousel">
      <ul>
        <li>
          <div class="info">
           <p>    <p>Secure retrieval of remote sensing images in an outsourced cloud environment garners considerable attention. Since the cloud service provider (CSP) is considered as a semitrusted third party that may return incorrect retrieval results to save computational resources or defraud retrieval fees for profit, it becomes a critical challenge to achieve secure and verifiable remote sensing image retrieval. 
The security analysis and experimental evaluation demonstrate the security, verifiability, and feasibility of the proposed scheme, achieving secure remote sensing image retrieval while preventing malicious behavior of CSP.
.  </p>  </p>
         </div>
          <div class="image"> <a href="#"><img src="css/images/1.png" alt="" /></a> </div>
          <div class="cl">&nbsp;</div>
        </li>
        <li>
          <div class="info">
          
          </div>
          <div class="image"> <a href="#"><img src="css/images/2.jpg" alt="" /></a> </div>
          <div class="cl">&nbsp;</div>
        </li>
     
      </ul>
    </div>
  </div>
</div>
<div id="main">
  <div class="shell">
    <div id="main-boxes">
     <center><p><font size="5" color="black">Download image </font></p><br/></center>
     
    <form action="decrypt1.jsp"  method="post" >
    <center><table width="371" border="0" >

    <tr><td><font color="black"> Secret Key :</td>
    <td><input type="text" name="skey" required="" /></td></tr>        
            
            
   <tr><td><font color="black"> Select File :</td>
    <td><input type="file" name="file" required="" /></td></tr>
    
    <td rowspan="2">
    <td><br><input type="submit" name="submit" value="Download" /></td>
   
    </td>
    <tr></tr>      
    </table></center>
    </form>    
  </div>
    
    
    <div class="cl">&nbsp;</div>
  </div>
</div>
<div class="footer">
  <div class="shell">
    <p class="rf"></a></p>
    <div style="clear:both;"></div>
  </div>
</div>
<script type="text/javascript">pageLoaded();</script>
<!-- END PAGE SOURCE -->
</body>
</html>l>