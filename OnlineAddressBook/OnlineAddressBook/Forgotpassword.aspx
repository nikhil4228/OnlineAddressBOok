<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Forgotpassword.aspx.cs" Inherits="OnlineAddressBook.Forgotpassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 250px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <p class="tit">FORGOT PASSWORD</p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="USER ID :" CssClass="lab"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtbxuserid" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="PASSWORD HINT:" CssClass="lab"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtbxpasswordhint" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
        <asp:Button ID="Button1" runat="server" Text="GET PASSWORD"  CssClass="but" OnClick="Button1_Click"/>
        <br />
        <br />
                    <asp:Label ID="lblpassword" runat="server" Text="NAME :" CssClass="lab"></asp:Label>
                <br />
        <br />
                <br />
        <br />
    <a href="Loginpage.aspx"  class="lin">Login</a>
    </div>
    </form>
</body>
</html>