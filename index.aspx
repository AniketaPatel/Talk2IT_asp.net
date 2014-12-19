<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Talk2IT</title>
<link rel="stylesheet" href="css/styles.css" type="text/css" media="all"/>
<!-- Page styles -->
<link type='text/css' href='css/demo.css' rel='stylesheet' media='screen' />
<!-- Contact Form CSS files -->
<link type='text/css' href='css/basic.css' rel='stylesheet' media='screen' />
<script type='text/javascript' src='js/jquery.js'></script>
<script type='text/javascript' src='js/jquery.simplemodal.js'></script>
<script type='text/javascript' src='js/basic.js'></script>
</head>
<body>
 <div class="body1">
  <div class="body2">
    <div class="main">
      <div class="">
        <div class="wrapper">
          <h1><a href="index.aspx" id="logo">Talk2IT</a></h1>
         </div>
        <div id="menu1">
          <ul class="l">
            <li class="nav1" id="active"><a href="index.aspx">Home</a></li>
            <li class="nav2"><a href="news.html">News</a></li>
            <li class="nav3"><a href="create_AC.aspx">SignUp</a></li>
            <li class="nav4"><div id=''><a href="login.aspx" class='basic'>SignIn</a></div></li>
            <li class="nav5"><a href="contact.aspx">Contact</a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="body3" align="center">
  <div class="body4">
    <div class="main">
     <img src="images/main.png" alt=""/>
    </div>
  </div>
</div>
<div class="body5">
  <div class="body6">
    <div class="main">
      <div class="wrapper">
        <table width="100%" align="center"><tr><td><figure class="left"><img src="images/letter1.png" alt=""></figure></td>
        <td><h2>Welcome to <span>Talk2IT</span>&nbsp;!</h2>       <div id="hh">   Connect with your colleagues for .....<br />
           Make friends,message them...
          </div> </td></tr></table></div>
    </div>
  </div>
</div>
<!-- modal content -->
		<div id="basic-modal-content">
			<% Response.WriteFile("login.aspx"); %> 
		</div>
</body>
</html>
