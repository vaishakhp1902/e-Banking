<%@page import="com.ebank.database.db"%>
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
  <center><table border="2" style="background-color:  darkseagreen">        <tr> <form action="authenticate" method="POST">
       <br>
             <%
       
        try {           
             Connection con = new db().getConnection();
             
             PreparedStatement ps=con.prepareStatement("select *from info");
            
            out.print("<table  border=0>");          
            ResultSet rs=ps.executeQuery();
            ResultSetMetaData rsmd=rs.getMetaData(); 
              String ss;         
            %> 
               <tr style="font-size: 25px">           
               <center>             <td> Choose To Authenticate Transfer Holder :  <select name="drop">           
                           
                           <% 
            while(rs.next())
            {                                                              
                                                                            
                  ss=rs.getString(2);                        
                 %>                                                                 
                                                 <option value="<%=ss%>"><%=ss%></option>                             
                          
                 <%      }
                
           // out.print("<table>");
            
        } 
        catch(Exception e)
        {
               e.printStackTrace();
                             }
        %>
                       </select></td></center>
                    </tr>           
          <tr>
              <td><center><input type="submit" value="Confirm Authentication" /></center></td>
                        <td></td>
                    </tr>
                
                </tbody>
            </table></center>
            </h3></form>
                 
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