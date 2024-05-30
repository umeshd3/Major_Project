<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Blockchain-Assisted Verifiable and Secure Remote Sensing Image Retrieval in Cloud Environment</title>
<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/jquery.jcarousel.js"></script>
<script src="js/cufon-yui.js" type="text/javascript" charset="utf-8"></script>
<script src="js/Chaparral_Pro.font.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="js/jquery-func.js"></script>
<link rel="shortcut icon" type="image/x-icon" href="css/images/favicon.ico" />
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
    <%
if(request.getParameter("mg")!=null){%>
    
   <script>alert('Login Sucessfully..!')</script>
}  

<%}
if(request.getParameter("m1")!=null){%>

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
      <li><a href="index.html">HOME</a></li>
      <li><a href="owner.jsp"> Owner</a></li>
      
       <li><a href="user.jsp">Cloud Server</a></li>
      <li><a   href="manager.jsp">Block Chain Server</a></li>
       <li><a class="active" href="keymanager.jsp">Key Manager</a></li>
       <li><a href="user.jsp"> User</a></li>
     
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
.  </p> </p>
         </div>
          <div class="image"> <a href="#"><img src="css/images/logo.gif" alt="" /></a> </div>
          <div class="cl">&nbsp;</div>
        </li>
        <li>
          <div class="info">
           
          </div>
          <div class="image"> <a href="#"><img src="css/images/logo.gif" alt="" /></a> </div>
          <div class="cl">&nbsp;</div>
        </li>
     
      </ul>
    </div>
  </div>
</div>
<div id="main">
  <div class="shell">
    <div id="main-boxes">
       <center><p><font size="5" color="black" style="font-weight: 700;">Key  Manager Login </font></p><br/></center>
     
    <form action="keymanageract.jsp" method="post">
    <center><table width="281" border="0" >

    <tr><td><font color="black"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><input type="text" name="username" required="" placeholder="Email" class="ip" /><i class='bx bxs-user'></i></td></tr>
    <tr><td><font color="black"> </td><td><input type="password" name="password" required="" placeholder="Password" class="ip"/><i class='bx bxs-lock-alt'></i></td></tr>
    
    <td rowspan="2">
        <td align="center"><br><button class="login" type="submit" name="submit" >Login</button></td>
   
    </td>
    <tr></tr>          
    </table></center>
    </form>
    <br/>
              
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
</html>