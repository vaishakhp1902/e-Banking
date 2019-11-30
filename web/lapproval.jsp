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
   <li><a href="Welcomeadmin.jsp" style="color:#FFF">Home</a>
    <!-- sub menu -->
   
  </li>
  <li><a href="adprofile.jsp" style="color:#FFF">My Profile</a>
    <!-- sub menu -->
   
  </li>
  <!-- end sub menu -->
 
  <li><a href="userlist.jsp">User Details</a>
    <!-- sub menu -->
 
  </li>
   <li><a href="mtransfer.jsp">Money Transfer</a>
    <!-- sub menu -->
 
  </li>
   <li><a href="ldetails.jsp">Loan Details</a>
    <!-- sub menu -->
 
  </li>
   
   <li><a href="Login.jsp">Logout</a>
    <!-- sub menu -->
   </li>
</ol>
<div id="container">
  <div id="site_title"><a href="index.html" style="color: #FFF;font-size: 25px"> E-Banking</a></div>
  <div style="margin-bottom: 15px"> <img  src="img/demo/slide_2.jpg" alt="" width="960" height="300"> </div>
  <div style="clear:both"></div>
  <h1 style="color: white;background-color:  #f26c4f">Loan Approval Details</h1>
  
  <center>     <table border="2" align="center">
                                    <%
                                    String title=(String) session.getAttribute("logname");
                                

                                        try {
                                          
                                                Connection con = new db().getConnection();
                                            String sa = "select * from loanview";
                                            PreparedStatement pr = con.prepareStatement(sa);
                                            ResultSet rs = pr.executeQuery();
                                    %>

                                    <th>RID</th>
                                    <th>Username</th>
                                    <th>Loan Type</th>
                                    <th>Account Number</th>
                                    <th>Loan amount</th>
                                    <th>Security Property</th>
                                    <th>Property Details</th>
                                    <th>Status</th>
                                    <th>Date/Time</th>
                                  
                               
                                                                       

                                    <%
                    while (rs.next()) {%>

                   
 <tr><td><%=rs.getString(1)%><input type="hidden" value="<%=rs.getString(1)%>" name="rid"</td>
 
<td><%=rs.getString(2)%></td><input type="hidden" value="<%=rs.getString(2)%>" name="username"</td>
  <td><%=rs.getString(3)%></td>
 <td><%=rs.getString(4)%></td><input type="hidden" value="<%=rs.getString(4)%>" name="accno"</td>
 <input type="hidden" value="<%=rs.getString(5)%>" name="camount"</td>
<td><%=rs.getString(6)%><input type="hidden" value="<%=rs.getString(6)%>" name="rqamount"</td></td>
  <td><%=rs.getString(7)%></td>
 <td><%=rs.getString(8)%></td>
 
<td><%=rs.getString(9)%></td>
  <td><%=rs.getString(10)%></td>
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