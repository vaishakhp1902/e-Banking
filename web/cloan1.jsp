<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Date" %>
<%@page import="com.ebank.database.db"%>


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
  <h1 style="color:white;background-color: deepskyblue">Car Loan Request Status</h1>

 
 
 <center>
     <br>
     <%
                    String s = request.getAttribute("msg1") != null ? request.getAttribute("msg1").toString() : "";
                    out.println("<h4>"+s+"</h4>");%>
     
     
     <form action="hloan" method="post">
             <table border="" align="center">
                                    <%
                                    String title=(String) session.getAttribute("logname");
                                

                                        try {
                                          
                                                 Connection con = new db().getConnection();
                                            String sa = "select * from lrequest where username='"+title+"'";
                                            PreparedStatement pr = con.prepareStatement(sa);
                                            ResultSet rs = pr.executeQuery();
                                    %>

                                 
                               
                                                                       

                                    <%
                    while (rs.next()) {%>

                   <table border="1"><tr><td> <table border="2">
                        <tr>
                            <td>
                                Rid:
                            </td>
                            <td>
                                <input type="text" name="owner" value="<%=rs.getString(1)%>" disabled="disabled" />
                            </td>
                        </tr>
                         <tr>
                            <td>
                                Username:
                            </td>
                            <td>
                                <input type="text" name="owner" value="<%=rs.getString(2)%>" disabled="disabled" />
                            </td>
                        </tr>
                             <tr>
                            <td>
                                Loan type :
                            </td>
                            <td>
                                <input type="text" name="owner" value="<%=rs.getString(3)%>" disabled="disabled" />
                            </td>
                        </tr>
                                </table></td><td>
                              <table border="2">
                        <tr>
                            <td>
                                Account No:
                            </td>
                            <td>
                                <input type="text" name="owner" value="<%=rs.getString(4)%>" disabled="disabled" />
                            </td>
                        </tr>
                             <tr>
                            <td>
                               Request Amount :
                            </td>
                            <td>
                                <input type="text" name="owner" value="<%=rs.getString(6)%>" disabled="disabled" />
                            </td>
                        </tr>
                              </table></td><td>     <table border="2">
                        <tr>
                            <td>
                                Request Status :
                            </td>
                            <td>
                                <input type="text" name="owner" value="<%=rs.getString(9)%>" disabled="disabled" />
                            </td>
                        </tr>
                             <tr>
                            <td>
                                Loan Number :
                            </td>
                            <td>
                                <input type="text" name="owner" value="<%=rs.getString(11)%>" disabled="disabled" />
                            </td>
                        </tr>
                                  </table></td>
                                    

                        </tr></table>
                                    <%	}
                                            con.close();
                                            pr.close();
                                            rs.close();

                                        } catch (Exception e) {
                                            System.out.println(e);
                                        }




                                        %></h3></table>
        
         
     </form>
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