<%@ page import="java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*" %>
<%

    String  result = "DSA sent successfully....";
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="javax.servlet.http.HttpSession" %>
<!DOCTYPE HTML>
<head>
<title>E-Banking</title>
<meta charset="utf-8">
<!-- Google Fonts -->
<link href='http://fonts.googleapis.com/css?family=Quicksand' rel='stylesheet' type='text/css'>
<!-- CSS Files -->
<link rel="stylesheet" type="text/css" media="screen" href="css/style.css">
<link rel="stylesheet" type="text/css" media="screen" href="menu/css/simple_menu.css">
<link rel="stylesheet" type="text/css" href="css/gridNavigation.css">
</head>
<body>
<!-- Main Menu -->
<ol id="menu">

  <!-- end sub menu -->
  <li><a href="profile.jsp" style="color:#FFF">My Profile</a>
    <!-- sub menu -->
   
  </li>
  <!-- end sub menu -->
 
  <li><a href="myaccount.jsp">My Account</a>
    <!-- sub menu -->
 
  </li>
   <li><a href="loans1.jsp">Loans</a>
    <!-- sub menu -->
 
  </li>
   <li><a href="deposit1.jsp">Deposit</a>
    <!-- sub menu -->
 
  </li>
  <li><a href="transfer1.jsp">Transfer</a>
    <!-- sub menu -->
 
  </li>
   <li><a href="Login.jsp">Logout</a>
    <!-- sub menu -->
 
</ol>
<div id="container">
  <div id="site_title"><a href="index.html" style="color: #FFF;font-size: 25px"> E-Banking</a></div>
  <div style="margin-bottom: 15px"> <img  src="img/demo/slide_2.jpg" alt="" width="960" height="300"> </div>
  <div style="clear:both"></div>
  <h1 style="color:white;background-color: deepskyblue">Money Transaction</h1>
  <center><center>  <h3 style="color: #ff0033"><img src="images/a.gif" width="100" height="60" alt="a"/>
              Enter DSA code & OTP !! !!!</h3></center>  <%
                    String s = request.getAttribute("msg1") != null ? request.getAttribute("msg1").toString() : "";
                    out.println("<h4>"+s+"</h4>");%><br>   <form action="transfercheck" method="post">
          <h3>
             <input type="hidden" name="username" value="<% String name = (String) session.getAttribute("logname");out.print(name);%>"/>
          Enter DSA code: <input type="text" name="dsa" required style="border-radius:20px">
          Enter OTP code: <input type="text" name="otp" required style="border-radius:20px">
          </h3>
          
          <input type="submit" value="Verify"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="reset" value="Clear All">
          
          
      </form>
      
  </center>
                 
  <div style="clear:both; height: 40px"></div>
</div>
<!-- END container -->
<div id="footer">
    
 
  <div style="clear:both"><center><img src="img/demo/saving.gif" width="400" height="100" alt="saving"/></center></div>
</div>
<!-- END footer -->
</body>
</html>
<!--<title>Sending Mail in JSP</title>
<h1><center><font color="blue">Sending Mail Using JSP</font></h1>
<b><center><font color="red"><% out.println(result);%></center>
        </b>-->