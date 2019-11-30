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
  <h1 style="color:white;background-color: deepskyblue">Recurring Deposit Creation</h1>

 
 
 <center>
     <br>
     <%
                    String s = request.getAttribute("msg1") != null ? request.getAttribute("msg1").toString() : "";
                    out.println("<h4>"+s+"</h4>");%>
     
     
     <form action="rd" method="post">
             <table border="2" align="center">
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

                   
 <tr><td>User name :</td><td><%=rs.getString(2)%></td></tr>
 
<tr><td>Country :</td><td><%=rs.getString(8)%></td></tr>
  <tr><td>Account Number :</td><td><%=rs.getString(9)%></td></tr>

  <tr style="color:black;background-color: yellow;font-size: 25px"><td>Current Balance :</td><td><%=rs.getString(10)%></b></td></tr>
   <tr><td></td><td><input type="text" name="username" value="<%=rs.getString(2)%>"/></td></tr>                       
             
                <tr><td></td><td><input type="text" name="accno" value="<%=rs.getString(9)%>"/></td></tr>                       
                 <tr><td></td><td><input type="text" name="camount" value="<%=rs.getString(10)%>"/></td></tr>                      
                                             
                                  


                                    <%	}
                                            con.close();
                                            pr.close();
                                            rs.close();

                                        } catch (Exception e) {
                                            System.out.println(e);
                                        }




                                        %></h3></table><input type="text" name="time" size="25" value="<%Date date=new Date();String s1=date.toString();out.println(s1);%>"/>
         <table>
                     <tr><td>
                             Choose Recurring Deposit Term : </td><td><select name="rd">
                               <option>12</option>
                             </select>months
                         </td></tr>
                     
                     <tr>
                         <td>Enter Amount To Pay Monthly : </td><td><input type="text" name="rdamount" required style="border-radius:20px"></td>
                     </tr>
                     <tr><td><input type="submit" value="Recurring Desposit Value"></td><td><input type="reset" value="Clear All"/></td></tr>
         </table>
         
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