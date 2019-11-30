<%@page import="com.ebank.database.db"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Date" %>



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
   <script language="Javascript" type="text/javascript">

        function onlyAlphabets(e, t) {
            try {
                if (window.event) {
                    var charCode = window.event.keyCode;
                }
                else if (e) {
                    var charCode = e.which;
                }
                else { return true; }
                if ((charCode > 64 && charCode < 91) || (charCode > 96 && charCode < 123))
                    return true;
                else
                    return false;
            }
            catch (err) {
                alert(err.Description);
            }
        }

    </script>
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
  <h1 style="color:white;background-color: deepskyblue">My Profile</h1>
  <center><%
                    String s = request.getAttribute("msg1") != null ? request.getAttribute("msg1").toString() : "";
                    out.println("<h3>"+s+"</h3>");%><form action="profile" method="post">
   <h3>                  <table border="2" align="center">
                                    <%
                                    String title=(String) session.getAttribute("logname");
                                

                                        try {
                                          
                                                 Connection con = new db().getConnection();
                                            String sa = "select * from info where username='"+title+"'";
                                            PreparedStatement pr = con.prepareStatement(sa);
                                            ResultSet rs = pr.executeQuery();
                                    %>

                                 
                               
                                                                       

                                    <%
                    while (rs.next()) {%>

                    <tr><td>Full name :</td><td><input type="text" onkeypress="return onlyAlphabets(event,this);" name="fname"  value="<%=rs.getString(1)%>" required style="border-radius:20px"/></td></tr>
 <tr><td>User name :</td><td><input type="text" name="username" onkeypress="return onlyAlphabets(event,this);" value="<%=rs.getString(2)%>" required style="border-radius:20px"/></td></tr>
 <tr><td>Password :</td><td><input type="text" name="password"  value="<%=rs.getString(3)%>" required style="border-radius:20px"/></td></tr>
<tr><td>Gender :</td><td><input type="text" name="gender"  value="<%=rs.getString(4)%>" required style="border-radius:20px"/></td></tr>

 <tr><td>Address :</td><td><input type="text" name="address"  value="<%=rs.getString(5)%>" required style="border-radius:20px"/></td></tr>
 <tr><td>District :</td><td><input type="text" name="district" onkeypress="return onlyAlphabets(event,this);"  value="<%=rs.getString(6)%>" required style="border-radius:20px"/></td></tr>
 <tr><td>State :</td><td><input type="text" name="state" onkeypress="return onlyAlphabets(event,this);" value="<%=rs.getString(7)%>" required style="border-radius:20px"/></td></tr>
<tr><td>Country :</td><td><input type="text" name="country" onkeypress="return onlyAlphabets(event,this);" value="<%=rs.getString(8)%>" required style="border-radius:20px"/></td></tr>
<tr><td>Email Id :</td><td><input type="text" name="email"  value="<%=rs.getString(12)%>" required style="border-radius:20px"/></td></tr>

 

                                     
                                             
                                  


                                    <%	}
                                            con.close();
                                            pr.close();
                                            rs.close();

                                        } catch (Exception e) {
                                            System.out.println(e);
                                        }




                                        %></h3></table><input type="submit" value="Update"></form>
  </center>
 
 
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