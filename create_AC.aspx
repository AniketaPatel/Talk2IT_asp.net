<%@ Page Language="C#" AutoEventWireup="true" CodeFile="create_AC.aspx.cs" Inherits="create_AC" EnableEventValidation="false"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Create New Account</title>

     <link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.css"/>
     <link rel="stylesheet" type="text/css" href="stylesheets/theme.css">
      <script type="text/javascript" src="js/validation.js"></script>
  
<style>
	.error
	{
		border:1px solid red;
	}
	.error_msg
	{
		color:white;
		background-color:#CCCCCC;
		font-size:14px;
		width:auto;
		height:auto;
		padding:7px;
		padding-left:20px;
		text-align:left;
		letter-spacing:1.5px;
		word-wrap:break-word;
	}
	#pass1_status
	{
		color:white;
		font-size:12px;
	}
	
#passwordStrength
{
	height:10px;
	display:block;
	float:left;
}

.strength0
{
	width:250px;
	background:#cccccc;
}

.strength1
{
	width:50px;
	background:#ff0000;
}

.strength2
{
	width:100px;	
	background:#ff5f5f;
}

.strength3
{
	width:150px;
	background:#56e500;
}

.strength4
{
	background:#4dcd00;
	width:200px;
}

.strength5
{
	background:#399800;
	width:250px;
}
</style>
</head>
<body class="body3">
<div class="navbar">
        <div class="navbar-inner">
               <img src="images/ttoit.png" alt=""/>
        </div>
    </div>
      
        <div class="row-fluid">
    <div class="dialog">
        <div class="block">
            <p class="block-heading" align="center">Sign Up</p>
            <div class="block-body">
                <form action="create_AC.aspx" method="post" runat="server">
                    &nbsp;&nbsp;<asp:TextBox name="fname" ID="fname" runat="server" placeholder="First Name" onblur="focusOut(this.id)" onfocus="focusIn(this.id)" value=""></asp:TextBox>
                     &nbsp;.
                    <asp:TextBox ID="lname" name="lname" runat="server" placeholder="Last Name" onblur="focusOut(this.id)" onfocus="focusIn(this.id)" value=""></asp:TextBox>
                    <asp:TextBox ID="email" placeholder="Email ID" name="email" runat="server" class="span12" onblur="focusOut(this.id),emailid(this.id),exists_email(this.id)" onfocus="focusIn(this.id)" value=""></asp:TextBox>  
                    <asp:Label ID="emailid" runat="server" Text=""></asp:Label>
       &nbsp;&nbsp;       <asp:TextBox ID="pass1" runat="server" placeholder="Password" name="pass1" onKeyUp="passwordStrength(this.value)" onblur="focusOut(this.id)" onfocus="focusIn(this.id)" TextMode="Password"></asp:TextBox> 
             &nbsp;    <asp:TextBox ID="pass2" runat="server" name="pass2" placeholder="ReEnter Password" onblur="focusOut(this.id)" onfocus="focusIn(this.id)" TextMode="Password"></asp:TextBox>
                   
            <p> <div id="passwordDescription">Password not entered</div>
			<div id="passwordStrength" class="strength0"></div></p><br />
		  
           	   &nbsp;&nbsp;  
                    <asp:DropDownList ID="year" onChange="checkYear()" runat="server">
                        <asp:ListItem Value="0">&nbsp;YEAR &nbsp;</asp:ListItem>
                   </asp:DropDownList>
                         &nbsp;&nbsp;
		         <asp:DropDownList ID="month" runat="server" onChange="checkMonth()" Enabled="false">
                     <asp:ListItem Value="0">&nbsp; MONTH</asp:ListItem>
                     <asp:ListItem Value="01">January</asp:ListItem>
                     <asp:ListItem Value="02">February</asp:ListItem>
                     <asp:ListItem Value="03">March</asp:ListItem>
                     <asp:ListItem Value="04">April</asp:ListItem>
                     <asp:ListItem Value="05">May</asp:ListItem>
                     <asp:ListItem Value="06">June</asp:ListItem>
                     <asp:ListItem Value="07">July</asp:ListItem>
                     <asp:ListItem Value="08">August</asp:ListItem>
                     <asp:ListItem Value="09">September</asp:ListItem>
                     <asp:ListItem Value="10">October</asp:ListItem>
                     <asp:ListItem Value="11">November</asp:ListItem>
                     <asp:ListItem Value="12">December</asp:ListItem>
		         </asp:DropDownList> &nbsp;&nbsp;
			
                    <asp:DropDownList ID="d1" runat="server"  Enabled="false">
                        <asp:ListItem>&nbsp;</asp:ListItem>
                    </asp:DropDownList>
		       &nbsp;&nbsp; 
	                      
           <label>
               <asp:RadioButtonList ID="gender" runat="server">
                   <asp:ListItem >Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
               </asp:RadioButtonList>
           </label><asp:Label ID="error_msg" runat="server"></asp:Label>
                           <asp:Label ID="notify" runat="server"></asp:Label>
                    <asp:Button ID="SignUp" runat="server" Text="Sign Up" class="btn btn-primary pull-right" OnClick="SignUp_Click"/>
            
                        </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>
