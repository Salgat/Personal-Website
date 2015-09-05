<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Manager_Default" %>

<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />

    <title></title>


</head>
<body>
    <form id="form1" runat="server">
    <asp:panel id="contents" runat="server">
        <asp:Button ID="Logout" runat="server" OnClick="Logout_Click" Text="Logout" />
    </asp:panel>
    </form>

    <br />
</body>
</html>
