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
  <li class="active_menu_item"><a href="index.html" style="color:#FFF">Home</a>
    <!-- sub menu -->
    
  </li>
  <!-- end sub menu -->
  <li><a href="Login.jsp">Login</a>
    <!-- sub menu -->
   
  </li>
  <!-- end sub menu -->
 
  <li><a href="latest.jsp">Latest News</a>
    <!-- sub menu -->
 
  </li>
   <li><a href="loans.jsp">Loans</a>
    <!-- sub menu -->
 
  </li>
   <li><a href="deposit.jsp">Deposit</a>
    <!-- sub menu -->
 
  </li>
   <li><a href="about.jsp">About Us</a>
    <!-- sub menu -->
 
  </li>
  <!-- end sub menu -->
  <li><a href="contact.html">Contact</a></li>
</ol>
<div id="container">
  <div id="site_title"><a href="index.html" style="color: #FFF;font-size: 25px"> E-Banking</a></div>
  <div style="margin-bottom: 15px"> <img  src="img/demo/slide_2.jpg" alt="" width="960" height="300"> </div>
  <div style="clear:both"></div>
   <form action="Login" method="post">
                       

       <h1 style="color:white;background-color: deepskyblue"> Login form</h1><center>
                            <br></br>   <%
                    String s = request.getAttribute("msg") != null ? request.getAttribute("msg").toString() : "";
                    out.println("<h3>"+s+"</h3>");%><h4>
                                 Login Me As : 
                                <input type="radio" name="type" value="user" checked="checked"/>Customer
                                                                         <br><br>
                               Username : <input type="text" name="name" required style="border-radius:20px"> <br><br>
                               Password : <input type="password"name="pwd" required style="border-radius:20px"><br><br>
                               
                                <input type="submit" value="Login">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="Clear All">
                                        <br><br> Click here to :  <a href="register.jsp" class="floatright">Join as New Member ?</a></h4>
       </center>
                    </form>
  <div style="clear:both; height: 40px"></div>
</div>
<!-- END container -->
<div id="footer">
  <!-- First Column -->
 
  <!-- Second Column -->
 
  <!-- Third Column -->
 
  <!-- Fourth Column -->
 
  <div style="clear:both"><center><img src="img/demo/saving.gif" width="400" height="100" alt="saving"/></center></div>
</div>
<!-- END footer -->
</body>
</html>