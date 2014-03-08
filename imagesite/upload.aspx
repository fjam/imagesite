<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="upload.aspx.cs" Inherits="imagesite.upload" %>

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
    
    <br />
    <br />

    <form id="form1" runat="server">
    <div id="upload">
    
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <br />
        <asp:Button ID="Button1" runat="server" Height="20px" OnClick="Button1_Click" Text="Upload" />
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
    
    </div>
    </form>
    

</body>
</html>
