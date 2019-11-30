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
 <h1 style="color:white;background-color: deepskyblue">Saving Deposit</h1>
  <center> <%
                    String s = request.getAttribute("msg1") != null ? request.getAttribute("msg1").toString() : "";
                    out.println("<h3>"+s+"</h3>");%>
                    
                    
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

                    <tr><td>Full name :</td><td><%=rs.getString(1)%></td></tr>
 <tr><td>User name :</td><td><%=rs.getString(2)%></td></tr>
 <tr><td>Account Number :</td><td><%=rs.getString(9)%></td></tr>
<tr><td>Amount :</td><td><%=rs.getString(10)%></td></tr>
                    
                                       <td><form action="deposit" method="POST">
                                               <input type="hidden" name="fname" value="<%=rs.getString(1)%>" />
                                               <input type="hidden" name="uname" value="<%=rs.getString(2)%>" />
                                               <input type="hidden" name="accno" value="<%=rs.getString(9)%>" />
                                               <input type="hidden" name="amount" value="<%=rs.getString(10)%>" />
                                               <h3>Enter the amount : <input style="font-size: 25px" type="text" name="amount1" value=""></h3>
                                               
                                               <br><center><input type="text" name="time" size="25" value="<%Date date=new Date();String s1=date.toString();out.println(s1);%>"/><br><br>
                                                   <input style="color: aquamarine;background-color: #747474" type="submit" value="Deposit" /></center>
                                           </form></td>
                                             
                                    </tr>


                                    <%	}
                                            con.close();
                                            pr.close();
                                            rs.close();

                                        } catch (Exception e) {
                                            System.out.println(e);
                                        }




                                        %></h3></table>
  </center>
  <!-- First Column -->
 
  <!-- Second Column -->
 
  <!-- Third Column -->
 
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