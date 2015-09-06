<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Manager_Login" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
<!-- Bootstrap Core CSS -->
    <link href="~/css/bootstrap.min.css" rel="stylesheet" />

    <title></title>
</head>
<body>
    <div class="container">
        <h2 class="text-center">Login</h2>
        <form id="form1" class="form-vertical" runat="server">
            <asp:Panel id="ResultContainer" runat="server">
                <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                <asp:label id="Result" runat="server"/>
            </asp:Panel>

            <asp:Panel id="LoginInformation" runat="server">
                <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                <asp:label id="Message" runat="server"/>
            </asp:Panel>

            <div class="form-group">
                <label class="control-label">Username:</label>
                <div class="">
                    <asp:TextBox ID="Username" placeholder="Enter username" class="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label">Password:</label>
                <div class="">
                    <asp:TextBox ID="Password" TextMode="password" class="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-group checkbox">
                    <label><input id="RememberMe" type="checkbox" value="" runat="server"/>Remember Me</label>
            </div>
            <div class="form-group">
                <asp:Button ID="Submit" runat="server" OnClick="Submit_Click" class="btn btn-default" Text="Submit" />
                <asp:Button ID="Logout" runat="server" OnClick="Logout_Click" class="btn btn-primary" Text="Logout" />
            </div>
            
            <strong>Default Username/Password: </strong>Guest/Guest
        </form>
    </div>

    <!-- jQuery -->
    <script src="../js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../js/bootstrap.min.js"></script>

    <script type="text/javascript">
    $(document).ready(function(){
	    $(".close").click(function(){
	        $("#ResultContainer").alert();
	    });
    });
    </script>
</body>
</html>
