<%@page import="com.ebank.database.db"%>
<%@page import="java.util.Date"%>
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
   <%
                    String s = request.getAttribute("msg1") != null ? request.getAttribute("msg1").toString() : "";
                    out.println("<h3>"+s+"</h3>");%>
 
  
  <form action="transfer" method="post"><h3>
  <table><tr><td>
              <h3>Receiver Side User:</h3>
      <table border="2" align="center">
                                    <% 
                                       
                                     
                                   
                                           String drop = (String) session.getAttribute("course");

                                        try {
                                          		
                                                  Connection con = new db().getConnection();
                                            String sa = "select * from info where username='"+drop+"'";
                                            PreparedStatement pr = con.prepareStatement(sa);
                                            ResultSet rs = pr.executeQuery();
                                    %>

                                  
                                   
                                    
                                     
                                                                       

                                    <%
                    while (rs.next()) {%>

                    <tr><td>Full name:</td><td><%=rs.getString(1)%></td></tr>
                    <tr style="font-size: 20px" ><td>User name:</td><td><%=rs.getString(2)%></td></tr>
                    <tr><td>Address:</td><td><%=rs.getString(5)%></td></tr>
                    <tr><td>District:</td><td><%=rs.getString(6)%></td></tr>
                    <tr><td>State:</td><td><%=rs.getString(7)%></td></tr>
                    <tr><td>Country:</td><td><%=rs.getString(8)%></td></tr>
                    <tr style="font-size: 20px" ><td>Account Number:</td><td><%=rs.getString(9)%></td></tr>
                   <tr><td></td><td><input type="hidden" value="<%=rs.getString(10)%>"/></td></tr>
   <tr style="font-size: 20px" ><td></td><td><input type="hidden" name="recacc" value="<%=rs.getString(9)%>"/></td></tr>
                   <tr><td></td><td><input type="hidden" name="recamount" value="<%=rs.getString(10)%>"/></td></tr>
                                    <%	}
                                            con.close();
                                            pr.close();
                                            rs.close();

                                        } catch (Exception e) {
                                            System.out.println(e);
                                        }




                                        %></table>
          </td>
          <td>      <h3>Sender Side User:</h3>
              <table border="2" align="center">
                                    <% 
                                       
                                     
                                   
                                           String touser = (String) session.getAttribute("logname");

                                        try {
                                          		
                                            Class.forName("com.mysql.jdbc.Driver").newInstance();
                                            Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/ebank", "root", "root");
                                          
                                            String sa = "select * from info where username='"+touser+"'";
                                            PreparedStatement pr = con.prepareStatement(sa);
                                            ResultSet rs = pr.executeQuery();
                                    %>

                               
                                   
                                    
                                     
                                                                       

                                    <%
                    while (rs.next()) {%>

                                      <tr><td>Full name:</td><td><%=rs.getString(1)%></td></tr>
                    <tr style="font-size: 20px" ><td>User name:</td><td><%=rs.getString(2)%></td></tr>
                    <tr><td>Address:</td><td><%=rs.getString(5)%></td></tr>
                    <tr><td>District:</td><td><%=rs.getString(6)%></td></tr>
                    <tr><td>State:</td><td><%=rs.getString(7)%></td></tr>
                    <tr><td>Country:</td><td><%=rs.getString(8)%></td></tr>
                    <tr style="font-size: 20px" ><td>Account Number:</td><td><%=rs.getString(9)%></td></tr>
                        <tr style="font-size: 20px" ><td>Amount:</td><td><%=rs.getString(10)%></td></tr>
   <tr style="font-size: 20px" ><td></td><td><input type="hidden" name="sendacc" value="<%=rs.getString(9)%>"/></td></tr>
                        <tr><td></td><td><input type="hidden" name="sendamount" value="<%=rs.getString(10)%>"/></td></tr>
                                    <%	}
                                            con.close();
                                            pr.close();
                                            rs.close();

                                        } catch (Exception e) {
                                            System.out.println(e);
                                        }




                                        %></table>
              
              
              
          </td>
      </tr>
  </table>             </h3>
                                        
                                        <center>  <input type="submit" value="Confirm Details"></center>
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