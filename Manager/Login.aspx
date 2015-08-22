<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Manager_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>Login Page</h1>
        <asp:label id="Message" runat="server" />
        <br />
        <br />
        Username
        <asp:TextBox ID="Username" runat="server"></asp:TextBox>
        <br />
        Password
        <asp:TextBox ID="Password" TextMode="password" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Submit" runat="server" OnClick="Submit_Click" Text="Submit" />
        <br />
        <asp:Button ID="Logout" runat="server" OnClick="Logout_Click" Text="Logout" />
        <br />
        <asp:label id="Result" runat="server" BorderColor="Red" />
        <br />
        Default Username/Password: Guest/Guest</div>
    </form>
</body>
</html>
