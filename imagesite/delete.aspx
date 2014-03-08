<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="delete.aspx.cs" Inherits="imagesite.delete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="style.css"/>
    <title></title>
</head>
<body>
    <a href="./">
        <div id="header">
            QCrossover<br />
        </div>
    </a> 

    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label2" runat="server" ForeColor="#009900" Text="Enter Value:"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox1" runat="server" Width="437px"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Delete" OnClick="Button1_Click" />
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
    <br />
        <asp:GridView ID="GridView1" runat="server" BackColor="Black" ForeColor="White">
        </asp:GridView>
    
    </div>
    </form>

    <hr />
    
    <div id="footer">
        All Credits to FJam, etechforum.com<br />
    </div>
</body>
</html>
