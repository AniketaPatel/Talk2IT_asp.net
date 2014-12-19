<%@ Page Language="C#" AutoEventWireup="true" CodeFile="edit_profile.aspx.cs" Inherits="edit_profile" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Home</title>
    <link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="stylesheets/theme.css">
    <!--<link rel="stylesheet" href="lib/font-awesome/css/font-awesome.css"> -->
    <script src="lib/jquery-1.7.2.min.js" type="text/javascript"></script>
</head>

<body>

<form runat="server">
    <div class="navbar">
        <div class="navbar-inner">
                <ul class="nav pull-right">
                    <li id="fat-menu" class="dropdown">
                        <a href="#" role="button" class="" data-toggle="dropdown"/>
                            <i class="icon-user"></i><div style="float:right;width:auto;border:none;" id="login_msg"><div style="float:right;" id="logout_img"> <a href="logout.php" class="link" id="logout" title="LOGOUT"><img src="images/logout.png" alt="LOGOUT" /></a></div> </div>
                            
                        </a>
                         
                    </li>
            </ul>
                <a class="brand" href=""><img src="images/ttoit.png" /></a>
        </div>
    </div>
       
    <div class="sidebar-nav">
    <div class="photo">  
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" ShowHeader="false">
    <Columns>
        <asp:ImageField DataImageUrlField="Value" ControlStyle-Height="100" ControlStyle-Width="100" />
    </Columns>
</asp:GridView>
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/images/user/"+ Eval("image") %>' Height="200" Width="230"></asp:Image>
            </ItemTemplate>
        </asp:DataList>   
</div>
       
               <a href="#dashboard-menu" class="nav-header" data-toggle="collapse"><i class="icon-dashboard"></i>Dashboard</a>
        <ul id="dashboard-menu" class="nav nav-list collapse in">
            <li><a href="home.php">Home</a></li>
           <!-- <li ><a href="users.html">Sample List</a></li>
            <li ><a href="user.html">Sample Item</a></li>
            <li ><a href="media.html">Media</a></li>
            <li ><a href="calendar.html">Calendar</a></li>
            -->
        </ul>

         <a href="#legal-menu" class="nav-header" data-toggle="collapse"><i class="icon-legal"></i>Friends</a>
        <ul id="legal-menu" class="nav nav-list collapse">
            <li ><a href="privacy-policy.html">Friends</a></li>
            <li ><a href="terms-and-conditions.html">Requests Received</a></li>
            <li ><a href="terms-and-conditions.html">Requests sents</a></li>
        </ul>
         
        <a href="#error-menu" class="nav-header collapsed" data-toggle="collapse"><i class="icon-exclamation-sign"></i>Composed Messages </a>
        <ul id="error-menu" class="nav nav-list collapse">
            <li ><a href="403.html">Inbox</a></li>
            <li ><a href="404.html">Sent</a></li>
            <li ><a href="500.html">Archive</a></li>
            <li ><a href="503.html">Trash</a></li>
        </ul>
        
                <a href="#accounts-menu" class="nav-header" data-toggle="collapse"><i class="icon-briefcase"></i>Account<!--<span class="label label-info">+3</span>--></a>
        <ul id="accounts-menu" class="nav nav-list collapse">
            <li ><a href="sign-in.html">Edit Profile</a></li>
            <li ><a href="reset-password.html">Reset Password</a></li>
        </ul>

        <a href="#dashboard-menu" class="nav-header" data-toggle="collapse"><i class="icon-dashboard"></i>Share</a>
        <ul id="Ul1" class="nav nav-list collapse">
            <li><a href="index.html">Share Moment</a></li>
            <li ><a href="users.html">My Shared Moment</a></li>
        </ul>

       <a href="help.html" class="nav-header" ><i class="icon-question-sign"></i>Help</a> 
    </div>
       
    <div class="content">
           <div class="header">
            <div class="stats">
</div>

            <h1 class="page-title">Home</h1>
        </div>        
           <!--     <ul class="breadcrumb">
            <li><a href="index.html">Home</a> <span class="divider">/</span></li>
            <li class="active"></li>
        </ul>   -->
        
        <div class="container-fluid">
            <div class="row-fluid">
             <div class="">
           <div class="alert alert-info">
       <!-- <button type="button" class="close" data-dismiss="alert">×</button>-->
        <strong><img src="images/w.png" />elcome &nbsp;</strong> <?php echo $_SESSION['name'];?>
    </div>

    <div class="block">
        <a href="#page-stats" class="block-heading" data-toggle="collapse">Edit  Profile </a>
        <div id="page-stats" class="block-body collapse in">

            <div class="stat-widget-container">
                <div class="stat-widget">
                    <div class="stat-button">                     <br />  
                      
                      <div id="tablewidget" class="block-body collapse in">
                          <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>   <br />
			 <input type="submit"  class="btn btn-primary pull-right" name="Submit" value="Upload"/>
            <!--   <p><a href="users.html">More...</a></p>-->
        </div>
				      <br />
                  </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="row-fluid">
    <div class="block">
        <a href="#tablewidget" class="block-heading" data-toggle="collapse">Profile Info
        <!--<span class="label label-warning">+10</span>--></a>
        <div id="Div2" class="block-body collapse in">
          
            <!--   <p><a href="users.html">More...</a></p>-->
        </div>
    </div>
    
</div>         
            </div>
        </div>
    </div>
    <script src="lib/bootstrap/js/bootstrap.js"></script>
    <script type="text/javascript">
        $("[rel=tooltip]").tooltip();
        $(function () {
            $('.demo-cancel-click').click(function () { return false; });
        });
    </script>
 </form>
</body>
</html>

