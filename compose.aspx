<%@ Page Language="C#" AutoEventWireup="true" CodeFile="compose.aspx.cs" Inherits="compose" %>


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
<form runat="server">
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
           <li ><a href="inbox.aspx">Inbox<span class="label label-info"></span></a></li>
            <li ><a href="sent.aspx">Sent<span class="label label-info"></span></a></li>
            <li ><a href="archive.aspx">Archive<span class="label label-info"></span></a></li>
            <li ><a href="trash.aspx">Trash<span class="label label-info"></span></a></li>
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
    
</div>
    <div class="block">
        <a href="#page-stats" class="block-heading" data-toggle="collapse">Compose Message <asp:Label ID="Label1" runat="server" Text='<%# Eval("_localTime") %>' ></asp:Label></a>
        <div id="page-stats" class="block-body collapse in">

            <div class="stat-widget-container">
                <div class="stat-widget">
                  <div id="table_wrapper" >
                    <div align="right">
                      <table width="483" align="center" >
                        <tr>
                          <td width="196" height="53"><label style="color:red;">* </label>
            To :</td>
                          <td width="271"><label>
                              <asp:TextBox ID="rid" runat="server"></asp:TextBox>
          
                                              </label></td>
                        </tr>
                        <tr>
                          <td height="60"><div align="left">Subject :</div></td>
                          <td> <asp:TextBox ID="subject" runat="server" name="subject" style="width: 226px"></asp:TextBox></td>
                        </tr>
                        <tr>
                          <td style="height: 87px"><label style="color:red;">* </label>
                            Message :</td>
                          <td style="height: 87px">
                              <asp:TextBox ID="message1" runat="server" cols="50" rows="5" TextMode="MultiLine"></asp:TextBox>
                          </td>
                        </tr>
                        <tr>
                          <td height="60"><div align="center">
                            <asp:Button ID="Reset" runat="server" Text="Reset"   class="btn btn-primary pull-right" OnClick="Reset_Click"/> 
                            </div></td>
                          <td><div align="center">
                            <asp:Button ID="Send"  runat="server" Text="Send" class="btn btn-primary pull-right"  OnClick="Send_Click"/>
                            </div></td>
                        </tr>
                                                                  </table>
                      </div>
                    <div style="clear:both"></div>
                  </div>
</div></div></div>
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
