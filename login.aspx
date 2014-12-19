<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Sign In</title>
     <script src="js/validation.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.css"/>
    <link rel="stylesheet" type="text/css" href="stylesheets/theme.css"/>
    <!-- Demo page code -->
    <script >
  
   </script>
 
   <style>
   .error {
     border:2px solid red;
      }
   </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
         <div class="row-fluid">
             <div class="dialog">
          <div class="block">
            <p class="block-heading" align="center">Get in Touch with Us </p>
            <div class="block-body">
               
                                  <asp:Label ID="notify" runat="server" Text=""></asp:Label>          
                <asp:TextBox ID="email" runat="server" class="span12" name="email" placeholder="Enter EmailID" style="background-image:url('images/user.png');background-repeat: no-repeat;padding-left:30px;" onblur="focusOut(this.id)" onfocus="focusIn(this.id)"/>
                <asp:TextBox ID="pass" TextMode="Password" runat="server" class="span12" placeholder="Enter Password" name="pass" style="background-image:url('images/pass.png');background-repeat: no-repeat;padding-left:30px;" onblur="focusOut(this.id)" onfocus="focusIn(this.id)"></asp:TextBox>
                    <br/>
                <asp:Button ID="Button1" runat="server" Text="Sign In" value="Sign In" name="submit" class="btn btn-primary pull-right" OnClick="Button1_Click"/>
                       
                     <p><a href="reset-password.aspx">Forgot your password?</a></p>
                       </div>            </div>
              <p class="pull-right"><a href="create_AC.aspx">Create New Account</a></p>
       </div>
   </div>

    </div>
    </form>
</body>
</html>
