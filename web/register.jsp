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
<link href='http://fonts.googleapis.com/css?family=Quicksand' rel='stylesheet' type='text/css'>
<!-- CSS Files -->
<link rel="stylesheet" type="text/css" media="screen" href="css/style.css">
<link rel="stylesheet" type="text/css" media="screen" href="menu/css/simple_menu.css">
<!-- Contact Form -->
<link href="contact-form/css/style.css" media="screen" rel="stylesheet" type="text/css">
<!-- JS Files -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js"></script>
<script src="js/jquery.tools.min.js"></script>
<script>
$(function () {
    $("#prod_nav ul").tabs("#panes > div", {
        effect: 'fade',
        fadeOutSpeed: 400
    });
});
</script>
<script>
$(document).ready(function () {
    $(".pane-list li").click(function () {
        window.location = $(this).find("a").attr("href");
        return false;
    });
});
</script>
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
    <SCRIPT language="javaScript"> 


function email(){ 
var email = document.forms["form1"]["email"].value; 
var validemail =/^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+.[a-zA-Z]{2,4}$/; 
if(!(validemail.test(email))){ 
alert("Invalid email address"); 
//form1.email.focus; 
//return false; 
} 
else{ 

document.form1.action="HOME.jsp"; 
document.form1.submit(); 

} 
} 

</SCRIPT> 

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
    <form name="form1" action="NewUser" method="post"> 
          <h1 style="color:white;background-color: deepskyblue"> Registration form</h1>
<table align="center" border="0">
                                    <tr>
                                        
                                        <td>Fullname:</td><td><input type="text" onkeypress="return onlyAlphabets(event,this);" name="fname" required style="border-radius:20px"></td></tr> 
                                    <tr><td>  Username:</td><td><input type="text" onkeypress="return onlyAlphabets(event,this);" name="uname" required style="border-radius:20px"> </td></tr>
                                    
                                <tr><td>Password:</td><td><input type="password" name="pwd" required style="border-radius:20px"></td></tr>
                                <tr><td>Gender:</td><td><input type="radio" name="gender" value="male" checked="checked" />Male<input type="radio" name="gender" value="female" />Female<input type="radio" name="gender" value="other" />Other</td></tr>
<tr>                                 <td>Address:</td><td><input type="text"  name="addr" required style="border-radius:20px"></td></tr>    

                                <tr><td>  District:</td><td><input type="text" onkeypress="return onlyAlphabets(event,this);" name="dist" required style="border-radius:20px"> </td></tr>
                                <tr><td>State:</td><td><input type="text" name="state" onkeypress="return onlyAlphabets(event,this);" required style="border-radius:20px"></td></tr>
                                <tr>
                                        
                                        <td>Country:</td><td><input type="text" name="country" onkeypress="return onlyAlphabets(event,this);" required style="border-radius:20px"></td></tr>                       
                                 <tr>
                                        
                                        <td>Email:</td><td>  <input name="email" onkeypress="return onlyAlphabets(event,this);"  required style="border-radius:20px" id="field5" type="email">
    </td></tr>



                                <tr><td> <input style="color:white;background-color: deepskyblue" onclick="email();" type="submit" value="Register"></td><td> <input style="color:white;background-color: deepskyblue" type="reset" value="Clear All" /></td></tr>
                              
                              
                                            </table>
                               <br>
                              

</form>    <%
                    String s = request.getAttribute("msg1") != null ? request.getAttribute("msg1").toString() : "";
                    out.println("<h3>"+s+"</h3>");%>
 
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