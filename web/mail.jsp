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
  
 
  
        <form action="mailJSP.jsp">
            <table>
                <tr><td><b><font color="red">
                    </td>
                   
               
                    </tr>

                <tr>
                    <td>
                          <table border="2" align="center">
                                    <% 
                                       
                                     
                                   
                                           String drop = (String) session.getAttribute("logname");

                                        try {
                                          		
                                                 Connection con = new db().getConnection();
                                            String sa = "select * from info where username='"+drop+"'";
                                            PreparedStatement pr = con.prepareStatement(sa);
                                            ResultSet rs = pr.executeQuery();
                                    %>

                                  
                                   
                                    
                                     
                                                                       

                                    <%
                    while (rs.next()) {%>

                    
                  
  
                    <tr><b><b><input type="hidden" name="mail" value="<%=rs.getString(12)%>"/> </tr><center><img src="images/cable.gif" width="450" height="200" alt="cable"/>
                                </center>
                                    <%	}
                                            con.close();
                                            pr.close();
                                            rs.close();

                                        } catch (Exception e) {
                                            System.out.println(e);
                                        }




                                        %></table>
                        <b><font color="red">
                    </td>
                    <td>
                        <input type="hidden" name="sub" value="Generated DSA code:"><br/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b><font color="red">
                    </td>
                    <td><h2> DSA Code :  <%String dsa=(String)session.getAttribute("dsa");out.println(dsa);%></h2>
                        <br/>
                    </td>
                </tr>
                <tr>
                    <td>
                <center>         <input type="submit" value="Continue Transfer"></center>
                    </td>
                    <td>
                     
                    </td>
                </tr>
            </table>
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