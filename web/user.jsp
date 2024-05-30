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
if(request.getParameter("m1")!=null){%>
    
   <script>alert('User Registration Success..!')</script>
}  

<%}
if(request.getParameter("m2")!=null){%>

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
      
       <li><a href="cloud.jsp">Cloud Server</a></li>
        <li><a href="manager.jsp">Block Chain Server</a></li>
       <li><a href="keymanager.jsp">Key Manager</a></li>
      <li><a  class="active" href="user.jsp">User</a></li>
    </ul>
  </div>
  <div class="shell">
 
</div>
<div id="featured">
  <div class="shell">
    <div class="slider-carousel">
      <ul>
        <li>
          <div class="info">
           <p> Earlier MAKA protocols are designed for singleserver architecture. As Internet users grow
exponentially, the number of cloud servers
rendering different services has also grown
significantly. For the single-server architecture, it
is difficult for users to maintain a variety of
passwords for each server. To improve user
experience, many scholars propose more flexible
MAKA protocols for multi-server environments.
Combined with the unified management features
of the cloud platform, such protocols can be
conveniently applied. users and cloud servers
only need to register in the registration center
(RC) to mutual authentication and key agreement
. </p>
         </div>
          <div class="image"> <a href="#"><img src="css/images/logo.gif" alt="" /></a> </div>
          <div class="cl">&nbsp;</div>
        </li>
        <li>
          <div class="info">
           <p>Earlier MAKA protocols are designed for singleserver architecture. As Internet users grow
exponentially, the number of cloud servers
rendering different services has also grown
significantly. For the single-server architecture, it
is difficult for users to maintain a variety of
passwords for each server. To improve user
experience, many scholars propose more flexible
MAKA protocols for multi-server environments.
Combined with the unified management features
of the cloud platform, such protocols can be
conveniently applied. users and cloud servers
only need to register in the registration center
(RC) to mutual authentication and key agreement
. </p>
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
       <center><p><font size="5" color="black" style="font-weight: 700;">User Login </font></p><br/></center>
     
    <form action="useract.jsp" method="post">
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
   
    <center><font style="font-size: 18px;">Don't have an account ? <font><a href="userreg.jsp"><font color="blue" style="font-size: 18px;;">Register </font></a> </center>
              
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