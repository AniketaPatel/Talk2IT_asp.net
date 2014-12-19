<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_home.aspx.cs" Inherits="admin_home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Home</title>
    <link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="stylesheets/theme.css">
    <!--<link rel="stylesheet" href="lib/font-awesome/css/font-awesome.css"> -->
    <script src="lib/jquery-1.7.2.min.js" type="text/javascript"></script>

</head>
<body>
    <form id="form1" runat="server">
    <div class="navbar">
        <div class="navbar-inner">
                <ul class="nav pull-right">
                    <li id="fat-menu" class="dropdown">
                        <a href="#" role="button" class="" data-toggle="dropdown"/>
                            <i class="icon-user"></i><div style="float:right;width:auto;border:none;" id="login_msg"><div style="float:right;" id="logout_img"> <a href="logout.aspx" class="link" id="logout" title="LOGOUT"><img src="images/logout.png" alt="LOGOUT" /></a></div> </div>
                            
                        </a>
                         
                    </li>
            </ul>
                <a class="brand" href=""><img src="images/ttoit.png" /></a>
        </div>
    </div>
       
    <div class="sidebar-nav">
    <div class="photo">     

 <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/images/user/"+ Eval("image") %>' Height="200" Width="230"></asp:Image>
            </ItemTemplate>
        </asp:DataList>
</div>
     
            <a href="#dashboard-menu" class="nav-header" data-toggle="collapse"><i class="icon-dashboard"></i>Dashboard</a>
        <ul id="dashboard-menu" class="nav nav-list collapse in">
            <li><a href="admin_home.aspx">Home</a></li>
           <!-- <li ><a href="users.html">Sample List</a></li>
            <li ><a href="user.html">Sample Item</a></li>
            <li ><a href="media.html">Media</a></li>
            <li ><a href="calendar.html">Calendar</a></li>
            -->
        </ul>
                 <a href="manage_user.aspx" class="nav-header" ><i class="icon-comment"></i>Manage User</a>
            
        <a href="#error-menu" class="nav-header collapsed" data-toggle="collapse"><i class="icon-exclamation-sign"></i>Messages </a>
        <ul id="error-menu" class="nav nav-list collapse">
            <li ><a href="compose.aspx">Composed Message</span></a></li>
           <li ><a href="inbox.aspx">Inbox<span class="label label-info"><asp:Label ID="msg_in" runat="server" Text="Label"></asp:Label> </span></a></li>
            <li ><a href="sent.aspx">Sent<span class="label label-info"><asp:Label ID="msg_sent" runat="server" Text="Label"></asp:Label> </span></a></li>
            <li ><a href="archive.aspx">Archive<span class="label label-info"><asp:Label ID="msg_archive" runat="server" Text="Label"></asp:Label> </span></a></li>
            <li ><a href="trash.aspx">Trash<span class="label label-info"><asp:Label ID="msg_trash" runat="server" Text="Label"></asp:Label> </span></a></li>
        </ul>
        
                <a href="#accounts-menu" class="nav-header" data-toggle="collapse"><i class="icon-briefcase"></i>Account<!--<span class="label label-info">+3</span>--></a>
    </div>
<!--
 <a href="#legal-menu" class="nav-header" data-toggle="collapse"><i class="icon-legal"></i>Share</a>
        <ul id="legal-menu" class="nav nav-list collapse">
            <li ><a href="friends.php">Share Moment</a></li>
            <li ><a href="users.html">My Shared Moment</a></li>
        </ul>
-->
  
    <div class="content">
           <div class="header">
      
           <h1 class="page-title">Admin Home</h1>     
             </div>
        <div class="container-fluid">
            <div class="row-fluid">
             <div class="">
           <div class="alert alert-info">
       <!-- <button type="button" class="close" data-dismiss="alert">×</button>-->
        <strong><img src="images/w.png" />elcome &nbsp;</strong> 
    </div>

    <div class="block">
        <a href="#page-stats" class="block-heading" data-toggle="collapse">Change Profile picture</a>
        <div id="page-stats" class="block-body collapse in">

            <div class="stat-widget-container">
                <div class="stat-widget">
                    <div class="stat-button">
                     <asp:FileUpload ID="FileUpload1" runat="server"/><br />
           <asp:Button ID="btnUpload" class="btn btn-primary pull-right" runat="server" Text="Upload" OnClick="Upload" />
                     <br />
                    </div>
                </div>
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
