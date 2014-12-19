<%@ Page Language="C#" AutoEventWireup="true" CodeFile="archive.aspx.cs" Inherits="archive" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Inbox</title>
    <link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="stylesheets/theme.css">
    <!--<link rel="stylesheet" href="lib/font-awesome/css/font-awesome.css"> -->
    <script src="lib/jquery-1.7.2.min.js" type="text/javascript"></script>
</head>

<body>
<form runat="server" enctype="multipart/form-data">
      
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
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" ShowHeader="false">
    <Columns>
        <asp:ImageField DataImageUrlField="Value" ControlStyle-Height="100" ControlStyle-Width="100" />
    </Columns>
</asp:GridView></div>
       
               <a href="#dashboard-menu" class="nav-header" data-toggle="collapse"><i class="icon-dashboard"></i>Dashboard</a>
        <ul id="dashboard-menu" class="nav nav-list collapse in">
            <li><a href="home.aspx">Home</a></li>
           <!-- <li ><a href="users.html">Sample List</a></li>
            <li ><a href="user.html">Sample Item</a></li>
            <li ><a href="media.html">Media</a></li>
            <li ><a href="calendar.html">Calendar</a></li>
            -->
        </ul>
               
            
        <a href="#error-menu" class="nav-header collapsed" data-toggle="collapse"><i class="icon-exclamation-sign"></i>Messages </a>
        <ul id="error-menu" class="nav nav-list collapse">
            <li ><a href="compose.aspx">Composed Message</span></a></li>
           <li ><a href="inbox.aspx">Inbox<span class="label label-info"><asp:Label ID="msg_in" runat="server" Text="Label"></asp:Label> </span></a></li>
            <li ><a href="sent.aspx">Sent<span class="label label-info"><asp:Label ID="msg_sent" runat="server" Text="Label"></asp:Label> </span></a></li>
            <li ><a href="archive.aspx">Archive<span class="label label-info"><asp:Label ID="msg_archive" runat="server" Text="Label"></asp:Label> </span></a></li>
            <li ><a href="trash.aspx">Trash<span class="label label-info"><asp:Label ID="msg_trash" runat="server" Text="Label"></asp:Label> </span></a></li>
        </ul>
        
                <a href="#accounts-menu" class="nav-header" data-toggle="collapse"><i class="icon-briefcase"></i>Account<!--<span class="label label-info">+3</span>--></a>
        <ul id="accounts-menu" class="nav nav-list collapse">
            <li ><a href="edit.aspx">Edit Profile</a></li>
            <li ><a href="reset-password.master">Reset Password</a></li>
        </ul>

       <a href="help.html" class="nav-header" ><i class="icon-question-sign"></i>Help</a> 
    </div>
      
    <div class="content">
           <div class="header">
            <div class="stats">
    <a href="friends.php"><p class="stat"><span class="number"><?php echo $friends; ?></span>Friends</p></a>
    <a href=""><p class="stat"><span class="number"><?php 
			$result=mysql_query("SELECT rid FROM messages_tb WHERE rid=$uid AND delete_status=0 AND trash_status=0 AND archive_status=0 AND read_status=1;",$connection);
		$read=mysql_affected_rows($connection);
		echo $read; ?></span>UnRead Messages</p></a>
</div>
        <h1 class="page-title">Inbox</h1> </div>
        <div class="container-fluid">
            <div class="row-fluid">
              <div class="row-fluid">
      
                     <div class="block">
        <a href="#page-stats" class="block-heading" data-toggle="collapse">Archived Messages</a>
        <div id="page-stats" class="block-body collapse in">

            <div class="stat-widget-container">
                <div class="stat-widget">
                    <div class="stat-button">
                        <% int i = 0; %>
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" OnRowDeleting="GridView2_RowDeleting" OnRowUpdating="GridView2_RowUpdating" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" OnRowCommand="GridView2_RowCommand">
                            <Columns> 
                                <asp:TemplateField HeaderText=" Sr.No ">
                                    <ItemTemplate>
                                       <asp:Label ID="Label1" runat="server" Text='<%# Eval("mid")  %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                  <asp:TemplateField HeaderText=" Sender ">
                                    <ItemTemplate>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("fname")+" "+Eval("lname")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                  <asp:TemplateField HeaderText=" Subject ">
                                    <ItemTemplate>
                                        <asp:Label ID="Label3" runat="server" Text='<%#Eval("subject")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText=" Message ">
                                    <ItemTemplate>
                                        <asp:Label ID="Label4" runat="server" Text='<%#Eval("message")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText=" Actions ">
                                    <ItemTemplate>
                                       <%-- <asp:LinkButton ID="LinkButton1" runat="server" class="btn btn-primary">Delete</asp:LinkButton>--%>
                                        <asp:LinkButton ID="LinkButton2" runat="server" class="btn btn-primary">Restore</asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:CommandField ShowDeleteButton="true" />                  
                            </Columns>
              
                        </asp:GridView>
                    

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
